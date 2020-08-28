package com.netease.cloud.${packageName}.spec.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.hateoas.Identifiable;

/**
 * @description ${classInfo.classComment}
 * @author ${authorName}
 * @date ${.now?string('yyyy-MM-dd')}
 */
public class ${classInfo.className} implements Identifiable<Long> {

    @JsonFormat(shape = JsonFormat.Shape.STRING)
    private Long id;

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
        return id;
    }

    public ${classInfo.className} setId(Long id) {
        this.id = id;
        return this;
    }

<#if classInfo.fieldList?exists && classInfo.fieldList?size gt 0>

<#list classInfo.fieldList as fieldItem>
    public ${fieldItem.fieldClass} get${fieldItem.fieldName?cap_first}() {
        return ${fieldItem.fieldName};
    }

    public ${classInfo.className} set${fieldItem.fieldName?cap_first}(${fieldItem.fieldClass} ${fieldItem.fieldName}) {
        this.${fieldItem.fieldName} = ${fieldItem.fieldName};
        return this;
    }

</#list>
</#if>
}
