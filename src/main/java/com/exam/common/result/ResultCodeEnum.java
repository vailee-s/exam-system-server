package com.exam.common.result;

import lombok.Getter;

/**
 * 统一返回结果状态信息类
 *
 * @author exam
 */
@Getter
public enum ResultCodeEnum {

    SUCCESS(200, "操作成功"),
    FAIL(201, "操作失败"),
    PARAM_ERROR(400, "参数错误"),
    UNAUTHORIZED(401, "未登录或登录已过期"),
    FORBIDDEN(403, "没有操作权限"),
    NOT_FOUND(404, "请求资源未找到"),
    SYSTEM_ERROR(500, "系统内部异常，请联系管理员"),

    /* 业务错误码 */
    LOGIN_ERROR(2001, "用户名或密码错误"),
    USER_NOT_EXIST(2002, "用户不存在"),
    USER_DISABLED(2003, "用户已被禁用"),
    FILE_UPLOAD_ERROR(3001, "文件上传失败"),
    FILE_DOWNLOAD_ERROR(3002, "文件下载失败"),
    EXAM_NOT_FOUND(4001, "考试信息不存在"),
    EXAM_HAS_ENDED(4002, "考试已结束"),
    EXAM_NOT_STARTED(4003, "考试尚未开始");

    private final Integer code;
    private final String message;

    ResultCodeEnum(Integer code, String message) {
        this.code = code;
        this.message = message;
    }
}
