package com.exam.controller;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.exam.common.result.Result;
import com.exam.entity.Banners;
import com.exam.service.BannerService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * 轮播图管理控制器
 *
 * @author exam
 */
@Slf4j
@Tag(name = "轮播图管理", description = "轮播图相关操作，包括图片上传、轮播图增删改查、状态管理等功能")
@RestController
@RequestMapping("/api/banners")
public class BannersController {

    @Autowired
    private BannerService bannerService;

    @Operation(summary = "获取轮播图列表", description = "按排序顺序返回所有轮播图列表")
    @GetMapping("/list")
    public Result<List<Banners>> getList() {
        LambdaQueryWrapper<Banners> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.orderByAsc(Banners::getSortOrder);
        List<Banners> bannersList = bannerService.list(queryWrapper);

        log.info("bannersList: {}", bannersList);
        return Result.success(bannersList);
    }
}
