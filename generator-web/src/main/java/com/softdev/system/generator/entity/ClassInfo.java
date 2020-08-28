package com.softdev.system.generator.entity;

import lombok.Data;

import java.util.List;

/**
 * class info
 *
 * @author xuxueli 2018-05-02 20:02:34
 */
@Data
public class ClassInfo {

    private String tableName;
    private String className;
	private String classComment;
	private List<FieldInfo> fieldList;

    public String getTableName() {
        return tableName;
    }

    public ClassInfo setTableName(String tableName) {
        this.tableName = tableName;
        return this;
    }

    public String getClassName() {
        return className;
    }

    public ClassInfo setClassName(String className) {
        this.className = className;
        return this;
    }

    public String getClassComment() {
        return classComment;
    }

    public ClassInfo setClassComment(String classComment) {
        this.classComment = classComment;
        return this;
    }

    public List<FieldInfo> getFieldList() {
        return fieldList;
    }

    public ClassInfo setFieldList(List<FieldInfo> fieldList) {
        this.fieldList = fieldList;
        return this;
    }
}