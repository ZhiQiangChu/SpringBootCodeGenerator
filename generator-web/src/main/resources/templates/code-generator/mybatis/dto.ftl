import java.io.Serializable;
import lombok.Data;
import java.util.Date;
import java.util.List;

/**
 * @author ${authorName}
 * @Version 1.0.0
 * @date ${.now?string('yyyy-MM-dd')}
 * @description ${classInfo.classComment}
 */
@Data<#if swagger?exists && swagger==true>
@ApiModel("${classInfo.classComment}")</#if>
public class ${classInfo.className}Dto implements Serializable {

    private static final long serialVersionUID = 1L;

<#if classInfo.fieldList?exists && classInfo.fieldList?size gt 0>
<#list classInfo.fieldList as fieldItem >
    /**
    * ${fieldItem.fieldComment}
    */<#if swagger?exists && swagger==true>
    @ApiModelProperty("${fieldItem.fieldComment}")</#if>
    private ${fieldItem.fieldClass} ${fieldItem.fieldName};

</#list>
    public ${classInfo.className}Dto() {
    }
</#if>

}
