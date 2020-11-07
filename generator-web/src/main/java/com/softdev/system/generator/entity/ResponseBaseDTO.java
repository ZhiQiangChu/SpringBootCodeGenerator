package com.softdev.system.generator.entity;

import com.softdev.system.generator.enums.ErrorCodeEnum;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;


/**
 * @author lzy
 * @Version 1.0.0
 * @Date 2020/11/6 11:07
 * @Description 返回基类
 */
@AllArgsConstructor
@Data
public class ResponseBaseDTO implements Serializable {

    /**
     * 返回错误码
     */
    private String code;
    /**
     * 错误信息
     */
    private String msg;
    /**
     * 时间戳
     */
    private Long ts;
    /**
     * 返回数据对象
     */
    private Object data;

    public <T> ResponseBaseDTO(String code, String name, long ts) {
        this.code = code;
        this.msg = name;
        this.ts = ts;
    }

    public static ResponseBaseDTO SUCCESS() {
        return SUCCESS(null);
    }

    public static <T> ResponseBaseDTO SUCCESS(T t) {
        return new ResponseBaseDTO(ErrorCodeEnum.SUCCESS.getCode(), ErrorCodeEnum.SUCCESS.getName(), System.currentTimeMillis(), t);
    }

    public static ResponseBaseDTO ERROR() {
        return ERROR(ErrorCodeEnum.ERROR_3000.getName());
    }

    public static ResponseBaseDTO ERROR(String msg) {
        return new ResponseBaseDTO(ErrorCodeEnum.ERROR_3000.getCode(), msg, System.currentTimeMillis(), null);
    }

    public static ResponseBaseDTO ERROR(ErrorCodeEnum errorCodeEnum) {
        return ERROR(errorCodeEnum, null);
    }

    public static <T> ResponseBaseDTO ERROR(ErrorCodeEnum errorCodeEnum, T t) {
        return new ResponseBaseDTO(errorCodeEnum.getCode(), errorCodeEnum.getName(), System.currentTimeMillis(), t);
    }

}
