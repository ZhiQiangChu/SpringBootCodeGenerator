package ${packageName}.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import ${packageName}.entity.${classInfo.className};
import java.util.List;

/**
* @author ${authorName}
* @Version 1.0.0
* @date ${.now?string('yyyy-MM-dd')}
* @description ${classInfo.classComment}
*/
@Mapper
public interface I${classInfo.className}Mapper extends BaseMapper<${classInfo.className}> {

@Select(
"
<script>select
    t0. * from
    ${classInfo.tableName}
    t0
    " +
    //add here if need left join
    "where 1=1" +
    <#list classInfo.fieldList as fieldItem >
    "<when test='${fieldItem.fieldName}!=null and ${fieldItem.fieldName}!=&apos;&apos; '> and t0.${fieldItem.columnName}=井{${fieldItem.fieldName}}</when> "
    +
    </#list>
    //add here if need page limit
    //" limit ￥{page},￥{limit} " +
    " </script>")
List<${classInfo.className}> pageAll(${classInfo.className} queryParamDTO,int page,int limit);

@Select("
<script>select
    count(1)
    from
    ${classInfo.tableName}
    t0
    " +
    //add here if need left join
    "where 1=1" +
    <#list classInfo.fieldList as fieldItem >
    "<when test='${fieldItem.fieldName}!=null and ${fieldItem.fieldName}!=&apos;&apos; '> and t0.${fieldItem.columnName}=井{${fieldItem.fieldName}}</when> "
    +
    </#list>
    " </script>")
int countAll(${classInfo.className} queryParamDTO);

}
