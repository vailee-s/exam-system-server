package com.exam.common.exception;

import com.exam.common.result.ResultCodeEnum;
import lombok.Getter;

/**
 * 自定义业务异常
 *
 * @author exam
 */
@Getter
public class BusinessException extends RuntimeException {

    private final Integer code;

    public BusinessException(String message) {
        super(message);
        this.code = ResultCodeEnum.FAIL.getCode();
    }

    public BusinessException(Integer code, String message) {
        super(message);
        this.code = code;
    }

    public BusinessException(ResultCodeEnum resultCodeEnum) {
        super(resultCodeEnum.getMessage());
        this.code = resultCodeEnum.getCode();
    }

    public BusinessException(ResultCodeEnum resultCodeEnum, Throwable cause) {
        super(resultCodeEnum.getMessage(), cause);
        this.code = resultCodeEnum.getCode();
    }
}
