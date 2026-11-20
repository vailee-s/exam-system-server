package com.exam.util;

import io.jsonwebtoken.*;
import io.jsonwebtoken.security.Keys;

import javax.crypto.SecretKey;

import com.exam.common.result.ResultCodeEnum;
import com.exam.exception.MyException;

import java.util.Date;

/**
 * JWT 工具类 (基于 JJWT 0.12.5)
 *
 * @author exam
 */
public class JwtUtil {
    // 密钥长度必须是32位，否则会抛出异常
    private static SecretKey secretKey = Keys.hmacShaKeyFor("AX6yUVsWuUsu6SXGfa8cbEkaNaFFFfXD".getBytes());

    /**
     * 生成token
     */
    public static String createToken(Long userId, String username, String role) {
        String token = Jwts.builder()
                .setExpiration(new Date(System.currentTimeMillis() + 1000 * 60 * 60 * 24L))
                .setSubject("LONIN_USER")
                .claim("userId", userId)
                .claim("username", username)
                .claim("role", role)
                // 0.12.x 改动：不再使用 SignatureAlgorithm 枚举，直接传入 secretKey 即可，内部会自动选择 HS256
                .signWith(secretKey)
                .compact();
        return token;
    }

    /**
     * 解析token
     */
    public static Claims parseToken(String token) {
        if (token == null) {
            throw new MyException(ResultCodeEnum.UNAUTHORIZED);
        }
        try {
            // 0.12.x 改动 1：parserBuilder() 改成了 parser()
            // 0.12.x 改动 2：setSigningKey() 改成了 verifyWith()
            JwtParser jwtParser = Jwts.parser()
                    .verifyWith(secretKey)
                    .build();

            // 0.12.x 改动 3：parseClaimsJws() 改成了 parseSignedClaims()
            Jws<Claims> claimsJws = jwtParser.parseSignedClaims(token);

            // 0.12.x 改动 4：getBody() 改成了 getPayload()
            Claims claims = claimsJws.getPayload();
            return claims;

        } catch (ExpiredJwtException e) {
            throw new MyException(ResultCodeEnum.TOKEN_EXPIRED);
        } catch (JwtException e) {
            throw new MyException(ResultCodeEnum.TOKEN_INVALID);
        }
    }

    /**
     * 获取 token 剩余有效期（毫秒）
     */
    public static long getRemainingTime(String token) {
        try {
            Claims claims = parseToken(token);
            Date expiration = claims.getExpiration();
            long remain = expiration.getTime() - System.currentTimeMillis();
            return Math.max(remain, 0);
        } catch (Exception e) {
            return 0;
        }
    }

    public static void main(String[] args) {
        System.out.println(createToken(1L, "admin", "admin"));
    }
}