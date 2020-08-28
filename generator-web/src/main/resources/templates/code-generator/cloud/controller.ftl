package com.netease.cloud.${packageName}.rest.beans;

import com.netease.cloud.${packageName}.spec.api.${classInfo.className}Service;
import com.netease.cloud.${packageName}.spec.model.${classInfo.className};
import com.netease.cloud.base.rest.resource.ListResource;
import com.netease.cloud.base.rest.resource.PagedResource;
import com.netease.cloud.base.rest.resource.Resource;
import com.netease.cloud.base.rest.resource.ResourceAssembler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 * @description ${classInfo.classComment}
 * @author ${authorName}
 * @date ${.now?string('yyyy-MM-dd')}
 */
@RestController
@RequestMapping(value = "/${classInfo.className?uncap_first}")
public class ${classInfo.className}Controller {

private ResourceAssembler<${classInfo.className}> ${classInfo.className?uncap_first}ResourceAssembler = new ResourceAssembler<>(${classInfo.className}Controller.class);

    @Autowired
    private ${classInfo.className}Service ${classInfo.className?uncap_first}Service;

    /**
    * 新增
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    @PostMapping("")
    public Resource add${classInfo.className}(${classInfo.className} ${classInfo.className?uncap_first}){
        Resource resource = new Resource();
        ${classInfo.className?uncap_first} = ${classInfo.className?uncap_first}Service.save(${classInfo.className?uncap_first});
        resource.setContent(${classInfo.className?uncap_first});
        return resource;
    }

    /**
    * 刪除
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    @DeleteMapping("/{id}")
    public void delete(@PathVariable Long id){
        ${classInfo.className?uncap_first}Service.deleteById(id);
    }

    /**
    * 更新
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    @PutMapping("/{id}}")
    public void update(@PathVariable Long id, ${classInfo.className} ${classInfo.className?uncap_first}){
        ${classInfo.className?uncap_first}.setId(id);
        ${classInfo.className?uncap_first}Service.update(${classInfo.className?uncap_first});
    }

    /**
    * 查询 根据主键 id 查询
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    @GetMapping("/{id}}")
    public Resource findById(@PathVariable Long id){
        return ${classInfo.className?uncap_first}ResourceAssembler.toResource(${classInfo.className?uncap_first}Service.findById(id));
    }

    /**
    * 条件查询
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    @GetMapping("")
    public ListResource findByCondition(${classInfo.className} ${classInfo.className?uncap_first}) {
        return ${classInfo.className?uncap_first}ResourceAssembler.toListResource(${classInfo.className?uncap_first}Service.findByCondition(${classInfo.className?uncap_first}));
    }

    /**
    * 查询 分页查询
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    @GetMapping("/page")
    public PagedResource findByConditionPageable(${classInfo.className} ${classInfo.className?uncap_first},
                                @RequestParam(required = false, defaultValue = "0") int offset,
                                @RequestParam(required = false, defaultValue = "20") int pageSize) {
        return ${classInfo.className?uncap_first}ResourceAssembler.toPagedResource(${classInfo.className?uncap_first}Service.findByConditionPageable(${classInfo.className?uncap_first}, offset, pageSize));
    }

}
