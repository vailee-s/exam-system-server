package com.exam.util;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.ExpiredJwtException;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.security.Keys;
import lombok.extern.slf4j.Slf4j;
import org.springframework.util.StringUtils;

import javax.crypto.SecretKey;
import java.nio.charset.StandardCharsets;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * JWT 工具类 (基于 JJWT 0.12.5)
 *
 * @author exam
 */
@Slf4j
public class JwtUtil {

    /**
     * Token 默认过期时间: 24 小时 (毫秒)
     */
    public static final long DEFAULT_EXPIRE_TIME = 24 * 60 * 60 * 1000L;

    /**
     * 签名密钥 (长度需不少于 32 字节 / 256 位)
     */
    private static final String DEFAULT_SECRET = "my-exam-sys-jwt-secret-key-must-be-long-enough-32bytes";
    private static final SecretKey SECRET_KEY = Keys.hmacShaKeyFor(DEFAULT_SECRET.getBytes(StandardCharsets.UTF_8));

    /**
     * 根据用户 ID 与用户名生成 Token
     *
     * @param userId   用户 ID
     * @param username 用户名
     * @return Token 字符串
     */
    public static String createToken(Long userId, String username) {
        return createToken(userId, username, DEFAULT_EXPIRE_TIME);
    }

    /**
     * 生成自定义有效期的 Token
     *
     * @param userId     用户 ID
     * @param username   用户名
     * @param expireTime 有效期 (毫秒)
     * @return Token 字符串
     */
    public static String createToken(Long userId, String username, long expireTime) {
        Map<String, Object> claims = new HashMap<>();
        claims.put("userId", userId);
        claims.put("username", username);

        return Jwts.builder()
                .claims(claims)
                .subject(String.valueOf(userId))
                .issuedAt(new Date())
                .expiration(new Date(System.currentTimeMillis() + expireTime))
                .signWith(SECRET_KEY)
                .compact();
    }

    /**
     * 解析 Token 获取载荷 Claims
     *
     * @param token Token 字符串
     * @return Claims 对象，若解析失败或过期返回 null
     */
    public static Claims parseToken(String token) {
        if (!StringUtils.hasText(token)) {
            return null;
        }
        try {
            return Jwts.parser()
                    .verifyWith(SECRET_KEY)
                    .build()
                    .parseSignedClaims(token)
                    .getPayload();
        } catch (ExpiredJwtException e) {
            log.warn("JWT 已经过期: {}", e.getMessage());
            throw e;
        } catch (Exception e) {
            log.error("JWT 解析异常: {}", e.getMessage());
            return null;
        }
    }

    /**
     * 从 Token 中获取用户 ID
     *
     * @param token Token 字符串
     * @return 用户 ID
     */
    public static Long getUserId(String token) {
        try {
            Claims claims = parseToken(token);
            if (claims != null && claims.get("userId") != null) {
                return Long.valueOf(claims.get("userId").toString());
            }
        } catch (Exception e) {
            log.warn("从 Token 获取用户 ID 失败: {}", e.getMessage());
        }
        return null;
    }

    /**
     * 从 Token 中获取用户名
     *
     * @param token Token 字符串
     * @return 用户名
     */
    public static String getUsername(String token) {
        try {
            Claims claims = parseToken(token);
            if (claims != null && claims.get("username") != null) {
                return claims.get("username").toString();
            }
        } catch (Exception e) {
            log.warn("从 Token 获取用户名失败: {}", e.getMessage());
        }
        return null;
    }

    /**
     * 校验 Token 是否有效 (未过期且合法)
     *
     * @param token Token 字符串
     * @return 是否有效
     */
    public static boolean validateToken(String token) {
        if (!StringUtils.hasText(token)) {
            return false;
        }
        try {
            Claims claims = parseToken(token);
            return claims != null && claims.getExpiration().after(new Date());
        } catch (Exception e) {
            return false;
        }
    }
}
