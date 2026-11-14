package com.exam.util;

import io.jsonwebtoken.Claims;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

/**
 * JWT 工具类单元测试
 *
 * @author exam
 */
public class JwtUtilTest {

    @Test
    @DisplayName("测试生成与解析 JWT Token")
    public void testCreateAndParseToken() {
        Long userId = 10086L;
        String username = "testUser";

        String token = JwtUtil.createToken(userId, username);
        Assertions.assertNotNull(token);
        Assertions.assertTrue(token.length() > 20);

        // 校验 Token
        boolean valid = JwtUtil.validateToken(token);
        Assertions.assertTrue(valid);

        // 获取用户 ID 与用户名
        Long parsedUserId = JwtUtil.getUserId(token);
        String parsedUsername = JwtUtil.getUsername(token);

        Assertions.assertEquals(userId, parsedUserId);
        Assertions.assertEquals(username, parsedUsername);

        // 解析 Claims
        Claims claims = JwtUtil.parseToken(token);
        Assertions.assertNotNull(claims);
        Assertions.assertEquals(String.valueOf(userId), claims.getSubject());
    }

    @Test
    @DisplayName("测试无效 Token 验证")
    public void testInvalidToken() {
        boolean valid = JwtUtil.validateToken("invalid.token.string");
        Assertions.assertFalse(valid);

        Long userId = JwtUtil.getUserId("invalid.token.string");
        Assertions.assertNull(userId);
    }
}
