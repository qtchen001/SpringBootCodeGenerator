package com.netease.cloud.${packageName}.data.entity;

import com.netease.cloud.base.spec.entity.Entity;

/**
 * @description ${classInfo.classComment}
 * @author ${authorName}
 * @date ${.now?string('yyyy-MM-dd')}
 */
public class ${classInfo.className}Entity extends Entity<Long> {

<#if classInfo.fieldList?exists && classInfo.fieldList?size gt 0>
<#list classInfo.fieldList as fieldItem >
    /**
    * ${fieldItem.fieldComment}
    */
    private ${fieldItem.fieldClass} ${fieldItem.fieldName};

</#list>
</#if>

    @Override
    public Long getId() {
        return super.getId();
    }

<#if classInfo.fieldList?exists && classInfo.fieldList?size gt 0>

<#list classInfo.fieldList as fieldItem>
    public ${fieldItem.fieldClass} get${fieldItem.fieldName?cap_first}() {
        return ${fieldItem.fieldName};
    }

    public ${classInfo.className}Entity set${fieldItem.fieldName?cap_first}(${fieldItem.fieldClass} ${fieldItem.fieldName}) {
        this.${fieldItem.fieldName} = ${fieldItem.fieldName};
        return this;
    }

</#list>
</#if>
}
