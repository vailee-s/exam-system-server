package com.exam.service;

import org.springframework.web.multipart.MultipartFile;

import com.baomidou.mybatisplus.spring.service.IService;
import com.exam.entity.Banners;

public interface BannerService extends IService<Banners> {


    // uploadBanners
    String uploadBanners(MultipartFile file) throws Exception;
}
