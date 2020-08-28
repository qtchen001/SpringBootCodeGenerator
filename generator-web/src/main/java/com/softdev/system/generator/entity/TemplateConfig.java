package com.softdev.system.generator.entity;

import lombok.Data;

import java.io.Serializable;

@Data
public class TemplateConfig implements Serializable {

    public static final long serialVersionUID = 66L;

    Integer id;
    String name;
    String group;
    String path;
    String description;

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public Integer getId() {
        return id;
    }

    public TemplateConfig setId(Integer id) {
        this.id = id;
        return this;
    }

    public String getName() {
        return name;
    }

    public TemplateConfig setName(String name) {
        this.name = name;
        return this;
    }

    public String getGroup() {
        return group;
    }

    public TemplateConfig setGroup(String group) {
        this.group = group;
        return this;
    }

    public String getPath() {
        return path;
    }

    public TemplateConfig setPath(String path) {
        this.path = path;
        return this;
    }

    public String getDescription() {
        return description;
    }

    public TemplateConfig setDescription(String description) {
        this.description = description;
        return this;
    }
}
