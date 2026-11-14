package com.exam.service;

import com.baomidou.mybatisplus.spring.service.IService;
import com.exam.entity.Categories;
import java.util.List;


public interface CategoriesService extends IService<Categories> {
    List<Categories> getCategoriesList();
}
