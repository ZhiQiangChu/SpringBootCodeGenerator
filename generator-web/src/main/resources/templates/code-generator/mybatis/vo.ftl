package ${packageName}.entity;

import lombok.Data;
import lombok.Builder;
import java.util.Date;
import java.util.List;
import java.io.Serializable;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

/**
 * @author ${authorName}
 * @Version 1.0.0
 * @date ${.now?string('yyyy-MM-dd')}
 * @description ${classInfo.classComment}
 */

@Builder
@Data
@ApiModel(value = "${classInfo.tableName}", description ="${classInfo.classComment}")
public class ${classInfo.className}Dto implements Serializable {

    private static final long serialVersionUID = 1L;

<#if classInfo.fieldList?exists && classInfo.fieldList?size gt 0>
    <#list classInfo.fieldList as fieldItem >
    @ApiModelProperty(value = "${fieldItem.fieldComment}", example = "${fieldItem.fieldComment}", required = true, dataType = "${fieldItem.fieldClass}")
    private ${fieldItem.fieldClass} ${fieldItem.fieldName};
    </#list>
</#if>

}