package com.netease.cloud.${packageName}.spec.api;

import com.netease.cloud.${packageName}.spec.model.${classInfo.className};

import java.util.List;

/**
 * @description ${classInfo.classComment}
 * @author ${authorName}
 * @date ${.now?string('yyyy-MM-dd')}
 */
public interface ${classInfo.className}Service {

    /**
    * 新增
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    */
    ${classInfo.className} save(${classInfo.className} ${classInfo.className?uncap_first});

    /**
    * 根据id删除
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    */
    int deleteById(Long id);

    /**
    * 根据主键id更新
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    int update(${classInfo.className} ${classInfo.className?uncap_first});

    /**
    * 根据给定条件更新
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    int updateByCondition(${classInfo.className} ${classInfo.className?uncap_first}, ${classInfo.className} condition);

    /**
    * 根据id查询
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    */
    ${classInfo.className} findById(Long id);

    /**
    * 根据条件查询
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    */
    List<${classInfo.className}> findByCondition(${classInfo.className} ${classInfo.className?uncap_first});

    /**
    * 根据条件分页查询
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    */
    List<${classInfo.className}> findByConditionPageable(${classInfo.className} ${classInfo.className?uncap_first}, int offset, int pageSize);

}
