package com.softdev.system.generator.entity;

import lombok.Data;

/**
 * field info
 *
 * @author xuxueli 2018-05-02 20:11:05
 */
@Data
public class FieldInfo {

    private String columnName;
    private String fieldName;
    private String fieldClass;
    private String fieldComment;

    public String getColumnName() {
        return columnName;
    }

    public FieldInfo setColumnName(String columnName) {
        this.columnName = columnName;
        return this;
    }

    public String getFieldName() {
        return fieldName;
    }

    public FieldInfo setFieldName(String fieldName) {
        this.fieldName = fieldName;
        return this;
    }

    public String getFieldClass() {
        return fieldClass;
    }

    public FieldInfo setFieldClass(String fieldClass) {
        this.fieldClass = fieldClass;
        return this;
    }

    public String getFieldComment() {
        return fieldComment;
    }

    public FieldInfo setFieldComment(String fieldComment) {
        this.fieldComment = fieldComment;
        return this;
    }
}
