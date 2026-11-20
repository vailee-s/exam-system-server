package com.exam.controller.login;

import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.exam.common.result.Result;
import com.exam.service.UsersService;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;
import com.exam.vo.LoginRequestVo;

@Tag(name = "UsersController", description = "用户管理")
@Slf4j 
@RestController
@RequestMapping("/api/user")
public class UsersController {

    @Autowired 
    private UsersService usersService;

    @Operation(summary = "用户登录", description = "用户登录")
    @PostMapping("/login")
    public Result<Map<String, Object>> login(@RequestBody LoginRequestVo loginRequestVo) {
        Map<String, Object> result = usersService.login(loginRequestVo);
        return Result.success(result, "登录成功");
    }
    
}
