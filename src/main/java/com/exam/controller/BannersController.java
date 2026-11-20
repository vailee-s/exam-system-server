package com.exam.controller;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.LambdaUpdateWrapper;
import com.exam.common.result.Result;
import com.exam.entity.Banners;
import com.exam.service.BannerService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameters;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

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

    /**
     * 获取轮播图列表
     * 按排序顺序返回所有轮播图列表
     * */
    @Operation(summary = "获取轮播图列表", description = "按排序顺序返回所有轮播图列表")
    @GetMapping("/list")
    public Result<List<Banners>> getList() {
        LambdaQueryWrapper<Banners> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.orderByAsc(Banners::getSortOrder);
        List<Banners> bannersList = bannerService.list(queryWrapper);

        log.info("bannersList: {}", bannersList);
        return Result.success(bannersList);
    }

    /**
     * 获取启用的轮播图列表
     * 按排序顺序返回所有启用的轮播图列表
     * */
    @Operation(summary = "获取启用的轮播图列表", description = "按排序顺序返回所有启用的轮播图列表")
    @GetMapping("/active")
    public Result<List<Banners>> getBannersListActive() {
        // 拼接查询条件
        LambdaQueryWrapper<Banners> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.orderByAsc(Banners::getSortOrder);
        queryWrapper.eq(Banners::getIsActive, true);
        // 根据条件查询启用的轮播图列表
        List<Banners> bannersList = bannerService.list(queryWrapper);
        log.info("bannersList: {}", bannersList);
        return Result.success(bannersList);
    }

    /**
     * 切换轮播图状态
     * @param id 轮播图ID
     * @param isActive 是否启用
     * @return 结果
     * */
    @Operation(summary = "切换轮播图状态", description = "根据ID切换轮播图状态")
    @PutMapping("/toggle/{id}")
    @Parameters(value = {
            @Parameter(name = "id", description = "轮播图ID", required = true),
            @Parameter(name = "isActive", description = "是否启用", required = true)
    })
    public Result<String> updateBannersStatus(
            @PathVariable Long id,
            @RequestParam  Boolean isActive
        ) {
            LambdaUpdateWrapper<Banners> updateWrapper = new LambdaUpdateWrapper<>();
            updateWrapper.eq(Banners::getId, id);
            updateWrapper.set(Banners::getIsActive, isActive);
            bannerService.update(updateWrapper);
            return Result.success("操作成功");
    }

    /**
     * 删除轮播图
     * @param id 轮播图ID
     * @return 结果
     * */
    @Operation(summary = "删除轮播图", description = "根据ID删除轮播图")
    @DeleteMapping("/delete/{id}")
    @Parameters(value = {
            @Parameter(name = "id", description = "轮播图ID", required = true)
    })
    public Result<String> deleteBanners(@PathVariable Long id) {
        LambdaUpdateWrapper<Banners> updateWrapper = new LambdaUpdateWrapper<>();
        updateWrapper.eq(Banners::getId, id);
        updateWrapper.set(Banners::getIsDeleted, 1);
        bannerService.update(updateWrapper);
        return Result.success("操作成功");
    }

    /**
     * 上传轮播图
     * @param file 轮播图文件
     * @return 结果
     * @throws Exception
     * */
    @Operation(summary = "上传轮播图", description = "上传轮播图文件")
    @PostMapping("/upload-image")
    @Parameters(value = {
            @Parameter(name = "file", description = "轮播图文件", required = true)
    })
    public Result<String> uploadBanners(@RequestParam MultipartFile file) throws Exception {
        String urlImage = bannerService.uploadBanners(file);
        log.info("urlImage: {}", urlImage);
        return Result.success(urlImage);
    }

    @Operation(summary = "添加轮播图", description = "新增一条轮播图记录")
    @PostMapping("/add")
    public Result<String> addBanners(@RequestBody Banners banners) {
        bannerService.save(banners);
        log.info("后台管理部分添加轮播图成功！保存的id{}" ,banners.getId());
        return Result.success("添加轮播图成功");
    }
    @Operation(summary = "更新轮播图", description = "更新一条轮播图记录")
    @PutMapping("/update")
    public Result<String> updateBanners(@RequestBody Banners banners) {
        bannerService.updateById(banners);
        log.info("后台管理部分更新轮播图成功！更新的id{}" ,banners.getId());
        return Result.success("更新轮播图成功");
    }
    @Operation(summary = "获取轮播图", description = "根据ID获取轮播图记录")
    @GetMapping("/get/{id}")
    public Result<Banners> getBanners(@PathVariable Long id) {
        Banners banners = bannerService.getById(id);
        log.info("后台管理部分获取轮播图成功！获取的id{}" ,banners.getId());
        return Result.success(banners, "获取轮播图成功");
    }
}
