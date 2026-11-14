package com.exam.controller.question;

import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;

import org.springframework.web.bind.annotation.RestController;

import com.exam.common.result.Result;
import com.exam.entity.Categories;
import com.exam.service.CategoriesService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Slf4j 
@Tag(name = "CategoriesController", description = "题目分类管理")
@RestController
@RequestMapping("/api/categories")
public class CategoriesController {
    @Autowired
    private CategoriesService categoriesService;

    @GetMapping
    public Result<List<Categories>> getCategoriesList() {
        List<Categories> categoriesList = categoriesService.getCategoriesList();
        return Result.success(categoriesList, "获取题目分类列表成功");
    }
    
}
