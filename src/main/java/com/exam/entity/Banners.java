package com.exam.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@TableName("banners")
@Data
@EqualsAndHashCode(callSuper = true)
@NoArgsConstructor // 无参构造
@AllArgsConstructor // 全参构造
@Schema(description = "轮播图")
public class Banners extends BaseEntity {

    /**
     * 轮播图标题
     */
    @TableField("title")
    @Schema(description = "轮播图标题")
    private String title;

    /**
     * 轮播图描述
     */
    @TableField("description")
    @Schema(description = "轮播图描述")
    private String description;

    /**
     * 图片URL
     */
    @TableField("image_url")
    @Schema(description = "图片URL")
    private String imageUrl;

    /**
     * 跳转链接
     */
    @TableField("link_url")
    @Schema(description = "跳转链接")
    private String linkUrl;

    /**
     * 排序顺序
     */
    @TableField("sort_order")
    @Schema(description = "排序顺序")
    private Integer sortOrder;

    /**
     * 是否启用
     */
    @TableField("is_active")
    @Schema(description = "是否启用")
    private Boolean isActive;
}
