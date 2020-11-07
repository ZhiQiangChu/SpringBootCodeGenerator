package com.softdev.system.generator.entity;


import java.io.Serializable;

import lombok.Data;

/**
 * @author lzy
 * @Version 1.0.0
 * @Date 2020/11/6 17:12
 * @Description
 */
@Data
public class RequestBaseDTO implements Serializable {

    /**
     * 请求流水号
     */
    private String requestId;
    /**
     * 系统标识
     */
    private String sys;
    /**
     * 时间戳
     */
    private Long ts;
    /**
     * 参数对象
     */
    private Object data;
}
