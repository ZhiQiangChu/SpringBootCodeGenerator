package com.softdev.system.generator.entity;

import java.io.Serializable;

import lombok.Data;

@Data
public class TemplateConfig implements Serializable {

    public static final long serialVersionUID = 66L;

    Integer id;
    String name;
    String group;
    String path;
    String description;

}
