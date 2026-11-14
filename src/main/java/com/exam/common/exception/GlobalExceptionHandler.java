package com.exam.common.exception;

import com.exam.common.result.Result;
import com.exam.common.result.ResultCodeEnum;
import jakarta.validation.ConstraintViolationException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.validation.BindException;
import org.springframework.web.HttpRequestMethodNotSupportedException;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import java.util.stream.Collectors;

/**
 * 全局异常处理组件
 *
 * @author exam
 */
@Slf4j
@RestControllerAdvice
public class GlobalExceptionHandler {

    /**
     * 处理自定义业务异常
     */
    @ExceptionHandler(BusinessException.class)
    public Result<Void> handleBusinessException(BusinessException e) {
        log.warn("业务异常: code={}, message={}", e.getCode(), e.getMessage());
        return Result.fail(e.getCode(), e.getMessage());
    }

    /**
     * 处理 @RequestBody 参数校验异常
     */
    @ExceptionHandler(MethodArgumentNotValidException.class)
    public Result<Void> handleMethodArgumentNotValidException(MethodArgumentNotValidException e) {
        String errorMsg = e.getBindingResult().getFieldErrors().stream()
                .map(fieldError -> fieldError != null ? fieldError.getDefaultMessage() : "")
                .collect(Collectors.joining("; "));
        log.warn("参数校验异常(MethodArgumentNotValidException): {}", errorMsg);
        return Result.fail(ResultCodeEnum.PARAM_ERROR.getCode(), errorMsg);
    }

    /**
     * 处理普通表单绑定参数校验异常
     */
    @ExceptionHandler(BindException.class)
    public Result<Void> handleBindException(BindException e) {
        String errorMsg = e.getBindingResult().getFieldErrors().stream()
                .map(fieldError -> fieldError != null ? fieldError.getDefaultMessage() : "")
                .collect(Collectors.joining("; "));
        log.warn("参数校验异常(BindException): {}", errorMsg);
        return Result.fail(ResultCodeEnum.PARAM_ERROR.getCode(), errorMsg);
    }

    /**
     * 处理单个参数校验异常 (@RequestParam / @PathVariable 等)
     */
    @ExceptionHandler(ConstraintViolationException.class)
    public Result<Void> handleConstraintViolationException(ConstraintViolationException e) {
        String errorMsg = e.getConstraintViolations().stream()
                .map(violation -> violation != null ? violation.getMessage() : "")
                .collect(Collectors.joining("; "));
        log.warn("参数约束异常(ConstraintViolationException): {}", errorMsg);
        return Result.fail(ResultCodeEnum.PARAM_ERROR.getCode(), errorMsg);
    }

    /**
     * 处理请求方式不支持异常
     */
    @ExceptionHandler(HttpRequestMethodNotSupportedException.class)
    public Result<Void> handleHttpRequestMethodNotSupportedException(HttpRequestMethodNotSupportedException e) {
        log.warn("请求方式不支持: {}", e.getMessage());
        return Result.fail(ResultCodeEnum.PARAM_ERROR.getCode(), "请求方式不支持: " + e.getMethod());
    }

    /**
     * 处理全局未知系统异常
     */
    @ExceptionHandler(Exception.class)
    public Result<Void> handleException(Exception e) {
        log.error("系统未知异常: ", e);
        return Result.fail(ResultCodeEnum.SYSTEM_ERROR.getCode(), "系统繁忙，请稍后重试");
    }
}
