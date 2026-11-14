package com.exam.controller;

import com.exam.common.result.Result;
import com.exam.util.JwtUtil;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.Map;

/**
 * 系统健康检查与示例控制器
 *
 * @author exam
 */
@Tag(name = "00. 系统健康与测试接口")
@RestController
@RequestMapping("/api/system")
public class HealthController {

    @Operation(summary = "服务健康检查", description = "用于检测服务是否正常运行")
    @GetMapping("/health")
    public Result<Map<String, Object>> health() {
        Map<String, Object> data = new HashMap<>();
        data.put("status", "UP");
        data.put("appName", "my-exam-sys-server");
        data.put("currentTime", LocalDateTime.now().toString());
        return Result.success(data);
    }

    @Operation(summary = "获取测试 JWT Token", description = "用于在文档右上角授权调试接口")
    @GetMapping("/token-demo")
    public Result<Map<String, String>> generateTokenDemo(
            @Parameter(description = "用户ID") @RequestParam(defaultValue = "1") Long userId,
            @Parameter(description = "用户名") @RequestParam(defaultValue = "admin") String username) {
        String token = JwtUtil.createToken(userId, username);
        Map<String, String> data = new HashMap<>();
        data.put("token", token);
        data.put("userId", String.valueOf(userId));
        data.put("username", username);
        return Result.success(data);
    }
}
