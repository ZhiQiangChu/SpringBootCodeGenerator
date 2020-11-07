import java.io.Serializable;
import lombok.Data;
import lombok.Builder;
import java.util.Date;
import java.util.List;

/**
* @author ${authorName}
* @Version 1.0.0
* @date ${.now?string('yyyy-MM-dd')}
* @description ${classInfo.classComment}
*/
@Data<#if swagger?exists && swagger==true>
    @ApiModel("${classInfo.classComment}" , description ="${classInfo.classComment}"))</#if>
@Builder
public class ${classInfo.className}RequestDto implements Serializable {

private static final long serialVersionUID = 1L;


<#if classInfo.fieldList?exists && classInfo.fieldList?size gt 0>
    <#list classInfo.fieldList as fieldItem >
        /**
        * ${fieldItem.fieldComment}
        */<#if swagger?exists && swagger==true>
        @ApiModelProperty( value = "${fieldItem.columnName}", example = "${fieldItem.fieldComment}",required = true, dataType = "${fieldItem.fieldClass}")</#if>
        private ${fieldItem.fieldClass} ${fieldItem.fieldName};

    </#list>
    public ${classInfo.className}RequestDto() {
    }
</#if>

}
