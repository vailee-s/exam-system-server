package com.exam.exception;

import com.exam.common.result.ResultCodeEnum;

public class MyException extends RuntimeException {
    private Integer code;
    private String message;

    public MyException(Integer code, String message) {
        super(message);
        this.code = code;
        this.message = message;
    }
    public MyException(ResultCodeEnum resultCodeEnum) {
        super(resultCodeEnum.getMessage());
        this.code = resultCodeEnum.getCode();
        this.message = resultCodeEnum.getMessage();
    }

}
