package com.exam.entity;

import java.util.List;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@TableName("categories")
@Data
@EqualsAndHashCode(callSuper = true)
@NoArgsConstructor
@AllArgsConstructor
@Schema(description = "题目分类实体")
public class Categories extends BaseEntity {
    
    @TableField("name")
    @Schema(description = "分类名称", example = "Java")
    private String name;

    @TableField("parent_id")
    @Schema(description = "父分类ID, 0表示一级分类", example = "0")
    private Long parentId;

    @TableField("sort")
    @Schema(description = "分类排序", example = "1")
    private Integer sort;

    @TableField(exist = false)
    @Schema(description = "子分类列表")
    private List<Categories> children;

    @TableField(exist = false)
    @Schema(description = "分类问题数量")
    private Long count;
}
