package com.exam.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.multipart.MultipartFile;
import com.baomidou.mybatisplus.spring.service.impl.ServiceImpl;
import com.exam.entity.Banners;
import com.exam.mapper.BannerMapper;
import com.exam.service.BannerService;
import com.exam.service.FileUploadService;
import org.springframework.stereotype.Service;

/**
 * 轮播图 Service 实现类
 *
 * @author exam
 */
@Service
public class BannerServiceImpl extends ServiceImpl<BannerMapper, Banners> implements BannerService {

    @Autowired
    private FileUploadService fileUploadService;

    @Override
    public String uploadBanners(MultipartFile file) {
        // 判断文件是否为空
        if (file.isEmpty()) {
            throw new RuntimeException("文件为空");
        }
        String contentType = file.getContentType();
        if (contentType != null && (contentType.startsWith("image/jpeg") || contentType.startsWith("image/png"))) {
            // 文件类型合法，上传到 banners 目录并返回访问地址
            return fileUploadService.uploadFile("banners", file);
        } else {
            throw new RuntimeException("文件类型不合法");
        }
    }
}
