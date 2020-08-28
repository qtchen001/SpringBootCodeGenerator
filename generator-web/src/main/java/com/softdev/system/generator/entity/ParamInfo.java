package com.softdev.system.generator.entity;

import lombok.Data;

/**
 * Post data - ParamInfo
 * @author zhengkai.blog.csdn.net
 */
@Data
public class ParamInfo {
    private String tableSql;
    private String authorName;
    private String packageName;
    private String returnUtil;
    private String nameCaseType;
    private String tinyintTransType;
    private String dataType;
    private boolean swagger;

    @Data
    public static class NAME_CASE_TYPE{
        public static String CAMEL_CASE="CamelCase";
        public static String UNDER_SCORE_CASE="UnderScoreCase";
        public static String UPPER_UNDER_SCORE_CASE="UpperUnderScoreCase";
    }

    public String getTableSql() {
        return tableSql;
    }

    public ParamInfo setTableSql(String tableSql) {
        this.tableSql = tableSql;
        return this;
    }

    public String getAuthorName() {
        return authorName;
    }

    public ParamInfo setAuthorName(String authorName) {
        this.authorName = authorName;
        return this;
    }

    public String getPackageName() {
        return packageName;
    }

    public ParamInfo setPackageName(String packageName) {
        this.packageName = packageName;
        return this;
    }

    public String getReturnUtil() {
        return returnUtil;
    }

    public ParamInfo setReturnUtil(String returnUtil) {
        this.returnUtil = returnUtil;
        return this;
    }

    public String getNameCaseType() {
        return nameCaseType;
    }

    public ParamInfo setNameCaseType(String nameCaseType) {
        this.nameCaseType = nameCaseType;
        return this;
    }

    public String getTinyintTransType() {
        return tinyintTransType;
    }

    public ParamInfo setTinyintTransType(String tinyintTransType) {
        this.tinyintTransType = tinyintTransType;
        return this;
    }

    public String getDataType() {
        return dataType;
    }

    public ParamInfo setDataType(String dataType) {
        this.dataType = dataType;
        return this;
    }

    public boolean isSwagger() {
        return swagger;
    }

    public ParamInfo setSwagger(boolean swagger) {
        this.swagger = swagger;
        return this;
    }
}
