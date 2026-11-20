package com.exam.common.result;

import lombok.Getter;

/**
 * 统一业务状态码枚举
 *
 * @author shkstrat
 * @create 2026-08-11 19:24
 */
@Getter
public enum ResultCodeEnum {

    // ==================== 通用基础状态码 ====================
    SUCCESS(200, "操作成功"),
    FAIL(500, "服务器内部错误"),
    PARAM_ERROR(202, "参数不正确"),
    SERVICE_ERROR(203, "服务异常"),
    DATA_ERROR(204, "数据异常"),
    ILLEGAL_REQUEST(205, "非法请求"),
    REPEAT_SUBMIT(206, "请勿重复提交"),
    DELETE_ERROR(207, "请先删除子级数据"),


    // ==================== 认证与授权（前端拦截器核心依赖） ====================
    /**
     * 401 - 未登录 / Token缺失 / Token过期
     * 前端 request.js 拦截器捕获此码后，会清除本地凭证并弹窗引导重新登录
     */
    UNAUTHORIZED(401, "未登录或登录已过期，请重新登录"),

    TOKEN_EXPIRED(402, "token过期"),
    TOKEN_INVALID(403, "token非法"),


    /**
     * 403 - 已登录但无权限访问
     * 前端捕获此码后会提示无权限，并在拦截器中拒绝继续执行
     */
    FORBIDDEN(403, "无访问权限"),


    // ==================== 用户/账号相关业务码 ====================
    ACCOUNT_EXIST_ERROR(301, "账号已存在"),
    USERNAME_EXIST(311, "用户名已存在"),
    ACCOUNT_NOT_EXIST_ERROR(306, "账号不存在"),
    ACCOUNT_ERROR(307, "用户名或密码错误"),
    ACCOUNT_DISABLED_ERROR(308, "该用户已被禁用"),
    PASSWORD_ERROR(309, "原密码错误"),
    PASSWORD_SAME(310, "新密码不能和原密码相同"),
    PASSWORD_TOO_SHORT(312, "新密码长度不能少于 6 位"),
    USERNAME_PASSWORD_BLANK (313, "用户名和密码不能为空"),
    USER_NOT_EXIST(314, "用户不存在"),


    LOGIN_PARAM_ERROR(315, "登录参数为空"),


    // ==================== 文件与系统相关状态码 ====================
    FILE_UPLOAD_ERROR(501, "文件上传失败"),
    SYSTEM_ERROR(500, "系统异常"),

    ;






    // CAPTCHA_CODE_ERROR(302, "验证码错误"),
    // CAPTCHA_CODE_EXPIRED(303, "验证码已过期"),
    // CAPTCHA_CODE_NOT_FOUND(304, "未输入验证码"),

    private final Integer code;

    private final String message;

    ResultCodeEnum(Integer code, String message) {
        this.code = code;
        this.message = message;
    }
}