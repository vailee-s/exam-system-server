package com.exam.service.impl;

import com.exam.mapper.CategoriesMapper;
import com.exam.service.CategoriesService;

import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.spring.service.impl.ServiceImpl;
import com.exam.entity.Categories;
import org.springframework.stereotype.Service;

/**
 * 题目分类 Service 实现类
 *
 * @author exam
 */
@Service
public class CategoriesServiceImpl extends ServiceImpl<CategoriesMapper, Categories> implements CategoriesService {

    @Override
    public List<Categories> getCategoriesList() {
        // 查询全部分类（逻辑删除自动过滤），按 sort 升序排列
        LambdaQueryWrapper<Categories> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.orderByAsc(Categories::getSort);
        List<Categories> allCategories = this.list(queryWrapper);

        // 按 parentId 分组：key 为父分类 id，value 为该父分类下的子分类列表
        Map<Long, List<Categories>> childrenMap = allCategories.stream()
                .collect(Collectors.groupingBy(Categories::getParentId));

        // 为每个分类挂载子分类（叶子节点的 children 为 null）
        allCategories.forEach(category -> category.setChildren(childrenMap.get(category.getId())));

        // 顶层分类 parentId 为 0，返回根节点列表即构成树形结构
        return childrenMap.getOrDefault(0L, Collections.emptyList());
    }
    
}
