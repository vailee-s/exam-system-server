package com.exam.service.impl;
import io.minio.BucketExistsArgs;
import io.minio.MakeBucketArgs;
import io.minio.MinioClient;
import io.minio.PutObjectArgs;
import io.minio.SetBucketPolicyArgs;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.exam.common.exception.BusinessException;
import com.exam.common.result.ResultCodeEnum;
import com.exam.config.MinioProperties;
import com.exam.service.FileUploadService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class FileUploadServiceImpl implements FileUploadService {

    @Autowired
    private MinioClient minioClient;
    @Autowired
    private MinioProperties minioProperties;

    @Override
    public String uploadFile(String folder, MultipartFile file) {
        try {
            boolean bucketExists = minioClient.bucketExists(BucketExistsArgs.builder().bucket(minioProperties.getBucketName()).build());
            if (!bucketExists) {
                minioClient.makeBucket(MakeBucketArgs.builder().bucket(minioProperties.getBucketName()).build());

                // policy 是允许所有用户访问
                String policy = """
                        {
                            "Version": "2012-10-17",
                            "Statement": [
                                {
                                    "Effect": "Allow",
                                    "Principal": "*",
                                    "Action": "s3:GetObject",
                                   "Resource" : "arn:aws:s3:::%s/*"
                                }
                            ]
                        }
                        """.formatted(minioProperties.getBucketName());
                minioClient.setBucketPolicy(SetBucketPolicyArgs.builder()
                        .config(policy)
                        .bucket(minioProperties.getBucketName())
                        .build());
            }

            // 生成 文件夹名称
            String folderName = folder + "/" + new SimpleDateFormat("yyyy-MM-dd").format(new Date()) + "/" + UUID.randomUUID().toString() + "-" + file.getOriginalFilename();

            minioClient.putObject(
                    PutObjectArgs.builder()
                            .bucket(minioProperties.getBucketName())
                            .object(folderName)
                            .stream(file.getInputStream(), file.getSize(), -1)
                            .contentType(file.getContentType())
                            .build()
            );
            // 拼接访问路径 端点 + 桶名 + 文件名
            String url = String.join("/", minioProperties.getEndpoint(), minioProperties.getBucketName(), folderName);
            // 记录日志
            log.info("文件上传核心业务，完成{}文件上传，返回地址为：{}", file.getOriginalFilename(), url);
            return url;
        } catch (Exception e) {
            log.error("文件上传 MinIO 失败: {}", e.getMessage(), e);
            throw new BusinessException(ResultCodeEnum.FILE_UPLOAD_ERROR);
        }
    }
}
