package ${packageName}.base.mapper;

import ${packageName}.entity.${classInfo.className}Entity;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Mapper;
<#--import org.springframework.stereotype.Repository;-->
import java.util.List;

/**
 * @author ${authorName}
 * @Version 1.0.0
 * @date ${.now?string('yyyy-MM-dd')}
 * @description ${classInfo.classComment}
 */
@Mapper
<#--@Repository-->
public interface I${classInfo.className}Mapper {

    /**
     * 新增
     * @author ${authorName}
     * @date ${.now?string('yyyy/MM/dd')}
     **/
    int insert(${classInfo.className}Entity ${classInfo.className?uncap_first}Entity);

    /**
     * 刪除
     * @author ${authorName}
     * @date ${.now?string('yyyy/MM/dd')}
     **/
    int delete(int id);

    /**
     * 更新
     * @author ${authorName}
     * @date ${.now?string('yyyy/MM/dd')}
     **/
    int update(${classInfo.className}Entity ${classInfo.className?uncap_first}Entity);

    /**
     * 查询 根据主键 id 查询
     * @author ${authorName}
     * @date ${.now?string('yyyy/MM/dd')}
     **/
    ${classInfo.className}Entity queryById(int id);

<#--    /**-->
<#--     * 查询 分页查询-->
<#--     * @author ${authorName}-->
<#--     * @date ${.now?string('yyyy/MM/dd')}-->
<#--     **/-->
<#--    List<${classInfo.className}Entity> pageList(int offset,int pagesize);-->

    /**
     * 查询 分页查询 count
     * @author ${authorName}
     * @date ${.now?string('yyyy/MM/dd')}
     **/
    int pageListCount(int offset,int pagesize);

}
