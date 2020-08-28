package com.netease.cloud.${packageName}.core.beans;

import com.google.common.collect.Lists;
import com.netease.cloud.${packageName}.core.annotation.Transactional;
import com.netease.cloud.${packageName}.data.entity.${classInfo.className}Entity;
import com.netease.cloud.${packageName}.data.mappers.${classInfo.className}Mapper;
import com.netease.cloud.${packageName}.spec.api.${classInfo.className}Service;
import com.netease.cloud.${packageName}.spec.model.${classInfo.className};
import com.netease.cloud.base.spec.entity.PageBounds;
import com.netease.cloud.base.spec.entity.PagedList;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import java.util.ArrayList;
import java.util.List;


/**
 * @description ${classInfo.classComment}
 * @author ${authorName}
 * @date ${.now?string('yyyy-MM-dd')}
 */
@Service
public class ${classInfo.className}ServiceImpl implements ${classInfo.className}Service {

    private static final Logger logger = LoggerFactory.getLogger(${classInfo.className}ServiceImpl.class);

    @Autowired
    private ${classInfo.className}Mapper ${classInfo.className?uncap_first}Mapper;

    @Transactional
    @Override
    public ${classInfo.className} save(${classInfo.className} ${classInfo.className?uncap_first}) {
        ${classInfo.className}Entity entity = new ${classInfo.className}Entity();
        BeanUtils.copyProperties(${classInfo.className?uncap_first}, entity);
        ${classInfo.className?uncap_first}Mapper.save(entity);
        return ${classInfo.className?uncap_first};
    }

    @Transactional
    @Override
    public int deleteById(Long id) {
        return ${classInfo.className?uncap_first}Mapper.deleteById(id);
    }

    @Transactional
    @Override
    public int update(${classInfo.className} ${classInfo.className?uncap_first}) {
        ${classInfo.className}Entity entity = new ${classInfo.className}Entity();
        BeanUtils.copyProperties(${classInfo.className?uncap_first}, entity);
        return ${classInfo.className?uncap_first}Mapper.update(entity);
    }

    @Transactional
    @Override
    public int updateByCondition(${classInfo.className} ${classInfo.className?uncap_first}, ${classInfo.className} condition) {
        return 0;
    }

    @Override
    public ${classInfo.className} findById(Long id) {
        ${classInfo.className} ${classInfo.className?uncap_first} = new ${classInfo.className}();
        ${classInfo.className}Entity entity = ${classInfo.className?uncap_first}Mapper.findById(id);
        BeanUtils.copyProperties(entity, ${classInfo.className?uncap_first});
        return ${classInfo.className?uncap_first};
    }

    @Override
    public List<${classInfo.className}> findByCondition(${classInfo.className} ${classInfo.className?uncap_first}) {
        List<${classInfo.className}> ${classInfo.className?uncap_first}s = Lists.newArrayList();
        ${classInfo.className}Entity condition = new ${classInfo.className}Entity();
        BeanUtils.copyProperties(${classInfo.className?uncap_first}, condition);
        
        List<${classInfo.className}Entity> entities = ${classInfo.className?uncap_first}Mapper.findByCondition(condition);
        if (CollectionUtils.isEmpty(entities)) {
            return ${classInfo.className?uncap_first}s;
        }
        entities.forEach(entity -> {
            ${classInfo.className} ${classInfo.className?uncap_first}Local = new ${classInfo.className}();
            BeanUtils.copyProperties(entity, ${classInfo.className?uncap_first}Local);
            ${classInfo.className?uncap_first}s.add(${classInfo.className?uncap_first}Local);
        });
    
        return ${classInfo.className?uncap_first}s;
    }

    @Override
    public PagedList<${classInfo.className}> findByConditionPageable(${classInfo.className} ${classInfo.className?uncap_first}, int offset, int pageSize) {
    
        ${classInfo.className}Entity condition = new ${classInfo.className}Entity();
        BeanUtils.copyProperties(${classInfo.className?uncap_first}, condition);
    
        List<PageBounds.OrderBy> orderBys = new ArrayList<>();
        orderBys.add(new PageBounds.OrderBy("create_time", PageBounds.Direction.DESC));
        orderBys.add(new PageBounds.OrderBy("id", PageBounds.Direction.DESC));
        PageBounds pageBounds = new PageBounds(offset, pageSize, orderBys, true);
    
        return new PagedList<>((PagedList<${classInfo.className}Entity>) ${classInfo.className?uncap_first}Mapper
        .findByConditionPageable(condition, pageBounds), this::entityTo${classInfo.className});
    }
        
    private ${classInfo.className} entityTo${classInfo.className}(${classInfo.className}Entity entity) {
        ${classInfo.className} ${classInfo.className?uncap_first} = new ${classInfo.className}();
        BeanUtils.copyProperties(entity, ${classInfo.className?uncap_first});
        return ${classInfo.className?uncap_first};
    }
}
