package com.exam.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Builder;


@Builder
@TableName("users")
@Schema(description = "用户表",name = "Users")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Users extends BaseEntity {
    
    @Schema(description = "用户ID")
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    @Schema(description = "用户名字")
    @TableField("username")
    private String username;

    @Schema(description = "用户密码")
    @TableField("password")
    private String password;

    @Schema(description = "用户姓名")
    @TableField("real_name")
    private String realName;

    @Schema(description = "用户邮箱")
    @TableField("role")
    private String role;

    @Schema(description = "用户状态")
    @TableField("status")
    private String status;

    public Users(Long id, String username, String role) {
        this.id = id;
        this.username = username;
        this.role = role;
    }
}
