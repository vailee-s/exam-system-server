package com.exam.common.result;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.io.Serializable;

/**
 * 全局统一返回结果包装类
 *
 * @author exam
 */
@Data
@Schema(description = "全局统一返回结果")
public class Result<T> implements Serializable {

    private static final long serialVersionUID = 1L;

    @Schema(description = "状态码", example = "200")
    private Integer code;

    @Schema(description = "返回消息", example = "操作成功")
    private String message;

    @Schema(description = "返回数据")
    private T data;

    @Schema(description = "响应时间戳", example = "1700000000000")
    private Long timestamp;

    public Result() {
        this.timestamp = System.currentTimeMillis();
    }

    public static <T> Result<T> build(T data, Integer code, String message) {
        Result<T> result = new Result<>();
        result.setData(data);
        result.setCode(code);
        result.setMessage(message);
        return result;
    }

    public static <T> Result<T> build(T data, ResultCodeEnum resultCodeEnum) {
        return build(data, resultCodeEnum.getCode(), resultCodeEnum.getMessage());
    }

    public static <T> Result<T> success() {
        return build(null, ResultCodeEnum.SUCCESS);
    }

    public static <T> Result<T> success(T data) {
        return build(data, ResultCodeEnum.SUCCESS);
    }

    public static <T> Result<T> success(T data, String message) {
        return build(data, ResultCodeEnum.SUCCESS.getCode(), message);
    }

    public static <T> Result<T> fail() {
        return build(null, ResultCodeEnum.FAIL);
    }

    public static <T> Result<T> fail(String message) {
        return build(null, ResultCodeEnum.FAIL.getCode(), message);
    }

    public static <T> Result<T> fail(Integer code, String message) {
        return build(null, code, message);
    }

    public static <T> Result<T> fail(ResultCodeEnum resultCodeEnum) {
        return build(null, resultCodeEnum);
    }
}
