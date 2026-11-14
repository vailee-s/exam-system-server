package com.exam.util;

import com.exam.common.exception.BusinessException;
import com.exam.common.result.ResultCodeEnum;
import com.exam.config.MinioProperties;
import io.minio.*;
import io.minio.http.Method;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import java.io.InputStream;
import java.util.UUID;
import java.util.concurrent.TimeUnit;

/**
 * MinIO 文件存储工具类
 *
 * @author exam
 */
@Slf4j
@Component
public class MinioUtil {

    @Autowired(required = false)
    private MinioClient minioClient;

    @Autowired(required = false)
    private MinioProperties minioProperties;

    /**
     * 判断存储桶是否存在
     *
     * @param bucketName 存储桶名称
     * @return 是否存在
     */
    public boolean bucketExists(String bucketName) {
        checkClient();
        try {
            return minioClient.bucketExists(BucketExistsArgs.builder().bucket(bucketName).build());
        } catch (Exception e) {
            log.error("检查 MinIO 存储桶是否存在失败: {}", e.getMessage());
            return false;
        }
    }

    /**
     * 创建存储桶
     *
     * @param bucketName 存储桶名称
     */
    public void makeBucket(String bucketName) {
        checkClient();
        try {
            if (!bucketExists(bucketName)) {
                minioClient.makeBucket(MakeBucketArgs.builder().bucket(bucketName).build());
                log.info("成功创建存储桶: {}", bucketName);
            }
        } catch (Exception e) {
            log.error("创建 MinIO 存储桶失败: {}", e.getMessage());
            throw new BusinessException(ResultCodeEnum.FILE_UPLOAD_ERROR.getCode(), "创建存储桶失败: " + e.getMessage());
        }
    }

    /**
     * 上传单个 MultipartFile 文件
     *
     * @param file 上传的文件
     * @return 上传后的文件访问地址或对象名称
     */
    public String uploadFile(MultipartFile file) {
        checkClient();
        try {
            String bucketName = minioProperties.getBucketName();
            makeBucket(bucketName);

            // 获取原文件名并生成唯一文件名
            String originalFilename = file.getOriginalFilename();
            String extension = "";
            if (StringUtils.hasText(originalFilename) && originalFilename.contains(".")) {
                extension = originalFilename.substring(originalFilename.lastIndexOf("."));
            }
            String fileName = UUID.randomUUID().toString().replace("-", "") + extension;

            // 执行上传
            try (InputStream inputStream = file.getInputStream()) {
                minioClient.putObject(PutObjectArgs.builder()
                        .bucket(bucketName)
                        .object(fileName)
                        .stream(inputStream, file.getSize(), -1)
                        .contentType(file.getContentType())
                        .build());
            }

            log.info("文件上传成功: {}", fileName);
            return fileName;
        } catch (Exception e) {
            log.error("文件上传 MinIO 失败: {}", e.getMessage(), e);
            throw new BusinessException(ResultCodeEnum.FILE_UPLOAD_ERROR);
        }
    }

    /**
     * 获取文件外链预签名下载/预览地址
     *
     * @param fileName 文件名
     * @param expiry   过期时间
     * @param unit     时间单位
     * @return 预签名地址
     */
    public String getPresignedObjectUrl(String fileName, int expiry, TimeUnit unit) {
        checkClient();
        try {
            return minioClient.getPresignedObjectUrl(GetPresignedObjectUrlArgs.builder()
                    .method(Method.GET)
                    .bucket(minioProperties.getBucketName())
                    .object(fileName)
                    .expiry(expiry, unit)
                    .build());
        } catch (Exception e) {
            log.error("获取文件预签名地址失败: {}", e.getMessage());
            return null;
        }
    }

    /**
     * 删除文件
     *
     * @param fileName 文件名
     */
    public void removeFile(String fileName) {
        checkClient();
        try {
            minioClient.removeObject(RemoveObjectArgs.builder()
                    .bucket(minioProperties.getBucketName())
                    .object(fileName)
                    .build());
            log.info("文件删除成功: {}", fileName);
        } catch (Exception e) {
            log.error("删除 MinIO 文件失败: {}", e.getMessage());
        }
    }

    private void checkClient() {
        if (minioClient == null || minioProperties == null) {
            throw new BusinessException(ResultCodeEnum.FAIL.getCode(), "MinIO 客户端未配置或未启用");
        }
    }
}
