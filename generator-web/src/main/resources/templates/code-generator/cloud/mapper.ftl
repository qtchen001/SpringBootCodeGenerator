package com.netease.cloud.${packageName}.data.mappers;

import com.netease.cloud.${packageName}.data.entity.${classInfo.className}Entity;
import com.netease.cloud.${packageName}.data.providers.${classInfo.className}SqlProvider;
import com.netease.cloud.base.spec.annotation.Pageable;
import com.netease.cloud.base.spec.annotation.Populate;
import com.netease.cloud.base.spec.internal.constants.PopulateType;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.InsertProvider;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.annotations.UpdateProvider;
import org.apache.ibatis.session.RowBounds;

import java.util.List;

/**
 * @description ${classInfo.classComment}
 * @author ${authorName}
 * @date ${.now?string('yyyy-MM-dd')}
 */
public interface ${classInfo.className}Mapper {

    /**
    * 新增
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    @InsertProvider(type = ${classInfo.className}SqlProvider.class, method = "create")
    @Options(useGeneratedKeys = true, keyProperty = "id", keyColumn = "id")
    @Populate(PopulateType.CREATE)
    int save(${classInfo.className}Entity entity);

    /**
    * 根据主键id删除
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    @Delete("delete from ${classInfo.tableName} where id=井{id}")
    int deleteById(@Param("id") Long id);

    /**
    * 根据主键id更新
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    @UpdateProvider(type = ${classInfo.className}SqlProvider.class, method = "update")
    @Populate(PopulateType.UPDATE)
    int update(${classInfo.className}Entity entity);

    /**
    * 根据给定条件更新
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    @UpdateProvider(type = ${classInfo.className}SqlProvider.class, method = "updateByCondition")
    @Populate(PopulateType.UPDATE)
    int updateByCondition(@Param("entity") ${classInfo.className}Entity entity, @Param("condition") ${classInfo.className}Entity condition);

    /**
    * 根据主键id查询
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    @Select("select * from ${classInfo.tableName} where id=井{id}")
    ${classInfo.className}Entity findById(@Param("id") Long id);

    /**
    * 根据条件搜索
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    @SelectProvider(type = ${classInfo.className}SqlProvider.class, method = "findByCondition")
    List<${classInfo.className}Entity> findByCondition(${classInfo.className}Entity entity);

    /**
    * 根据给定条件分页查询
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    @Pageable
    @SelectProvider(type = ${classInfo.className}SqlProvider.class, method = "findByCondition")
    List<${classInfo.className}Entity> findByConditionPageable(@Param("entity") ${classInfo.className}Entity entity, RowBounds rowBounds);

}