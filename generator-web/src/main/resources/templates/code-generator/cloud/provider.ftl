package com.netease.cloud.${packageName}.data.providers;

import com.netease.cloud.${packageName}.data.entity.${classInfo.className}Entity;
import com.netease.cloud.base.data.jdbc.SQL;
import com.netease.cloud.base.data.providers.BaseEntitySqlProvider;
import java.util.Map;

/**
 * @description ${classInfo.classComment}
 * @author ${authorName}
 * @date ${.now?string('yyyy-MM-dd')}
 */
public class ${classInfo.className}SqlProvider extends BaseEntitySqlProvider<${classInfo.className}Entity>  {

    @Override
    protected String getTableName() {
    return "${classInfo.tableName}";
    }

    /**
    * 新增
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    @Override
    protected SQL onCreate(SQL sql, ${classInfo.className}Entity entity) {
    return sql
    <#if classInfo.fieldList?exists && classInfo.fieldList?size gt 0>
        <#list classInfo.fieldList as fieldItem>
            .VALUES_IF("${fieldItem.columnName}", "井{${fieldItem.fieldName}}", entity.get${fieldItem.fieldName?cap_first}() != null)
        </#list>
    </#if>
            ;
    }

    /**
    * 根据主键id更新
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    @Override
    protected SQL onUpdate(SQL sql, ${classInfo.className}Entity entity) {
    return sql
    <#if classInfo.fieldList?exists && classInfo.fieldList?size gt 0>
        <#list classInfo.fieldList as fieldItem>
            .SET_IF("${fieldItem.columnName}=井{${fieldItem.fieldName}}", entity.get${fieldItem.fieldName?cap_first}() != null)
        </#list>
    </#if>
            ;
    }

    /**
    * 根据条件查找
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    public String findByCondition(${classInfo.className}Entity entity) {
    return new SQL()
    .SELECT("*")
    .FROM(getTableName())
    <#if classInfo.fieldList?exists && classInfo.fieldList?size gt 0>
        <#list classInfo.fieldList as fieldItem>
            .WHERE_IF("${fieldItem.columnName}=井{${fieldItem.fieldName}}", entity.get${fieldItem.fieldName?cap_first}() != null)
        </#list>
    </#if>
            .toString();
    }

    /**
    * 根据entity条件更新具体字段
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    public String updateByCondition(Map<String, Object> map) {
    ${classInfo.className}Entity entity = (${classInfo.className}Entity) map.get("entity");
    ${classInfo.className}Entity condition = (${classInfo.className}Entity) map.get("condition");

    return updateSQL(map)
    <#if classInfo.fieldList?exists && classInfo.fieldList?size gt 0>
        <#list classInfo.fieldList as fieldItem>
            .SET_IF("${fieldItem.columnName}=井{entity.${fieldItem.fieldName}}", entity.get${fieldItem.fieldName?cap_first}() != null)
        </#list>
    </#if>
    <#if classInfo.fieldList?exists && classInfo.fieldList?size gt 0>
        <#list classInfo.fieldList as fieldItem>
            .WHERE_IF("${fieldItem.columnName}=井{condition.${fieldItem.fieldName}}", condition.get${fieldItem.fieldName?cap_first}() != null)
        </#list>
    </#if>
            .toString();
    }

}
