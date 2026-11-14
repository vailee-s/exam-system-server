package com.exam.service.impl;

import com.baomidou.mybatisplus.spring.service.impl.ServiceImpl;
import com.exam.entity.Banners;
import com.exam.mapper.BannerMapper;
import com.exam.service.BannerService;
import org.springframework.stereotype.Service;

/**
 * 轮播图 Service 实现类
 *
 * @author exam
 */
@Service
public class BannerServiceImpl extends ServiceImpl<BannerMapper, Banners> implements BannerService {

}
