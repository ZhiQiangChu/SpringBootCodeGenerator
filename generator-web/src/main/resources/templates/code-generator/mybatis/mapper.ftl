package ${packageName}.base.mapper

import ${packageName}.base.entity.${classInfo.className};
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
    int insert(${classInfo.className} ${classInfo.className?uncap_first});

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
    int update(${classInfo.className} ${classInfo.className?uncap_first});

    /**
     * 查询 根据主键 id 查询
     * @author ${authorName}
     * @date ${.now?string('yyyy/MM/dd')}
     **/
    ${classInfo.className} queryById(int id);

    /**
     * 查询 分页查询
     * @author ${authorName}
     * @date ${.now?string('yyyy/MM/dd')}
     **/
    List<${classInfo.className}> pageList(int offset,int pagesize);

    /**
     * 查询 分页查询 count
     * @author ${authorName}
     * @date ${.now?string('yyyy/MM/dd')}
     **/
    int pageListCount(int offset,int pagesize);

}
