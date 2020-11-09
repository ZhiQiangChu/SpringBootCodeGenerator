import org.springframework.stereotype.Service;
import ${packageName}.mapper.I${classInfo.className}Mapper;
import ${packageName}.entity.${classInfo.className}Entity;
import ${packageName}.base.util.BeanCopyUtils;
import ${packageName}.base.enums.ErrorCodeEnum;
import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author ${authorName}
 * @Version 1.0.0
 * @date ${.now?string('yyyy-MM-dd')}
 * @description ${classInfo.classComment}
 */
@Service
public class I${classInfo.className}ServiceImpl implements I${classInfo.className}Service {

	@Resource
	private I${classInfo.className}Mapper i${classInfo.className}Mapper;


	@Override
	public ResponseBaseDTO insert(${classInfo.className}Dto ${classInfo.className?uncap_first}Dto) {

		// valid
		if (${classInfo.className?uncap_first}Dto == null) {
			return ${returnUtil}.ERROR("必要参数缺失");
        }
		${classInfo.className}Entity ${classInfo.className?uncap_first}Entity = BeanCopyUtils.copyObject(${classInfo.className?uncap_first}Dto,${classInfo.className}Entity.class);
		//dto convert to entity ...

		int ret = i${classInfo.className}Mapper.insert(${classInfo.className?uncap_first}Entity);
        return ${returnUtil}.SUCCESS(ret);
	}


	@Override
	public ResponseBaseDTO delete(int id) {
		int ret = i${classInfo.className}Mapper.delete(id);
		return ret > 0 ? ${returnUtil}.SUCCESS(ret) : ${returnUtil}.ERROR();
	}


	@Override
	public ResponseBaseDTO update(${classInfo.className}Dto ${classInfo.className?uncap_first}Dto) {

		// valid
		if (${classInfo.className?uncap_first}Dto == null) {
			return ${returnUtil}.ERROR("必要参数缺失");
		}
		ResponseBaseDTO responseBaseDTO = queryById(${classInfo.className?uncap_first}Dto.getId());
		if (${classInfo.className?uncap_first}Dto == null) {
			return ${returnUtil}.ERROR("未查到相关数据!");
		}
		${classInfo.className}Entity ${classInfo.className?uncap_first}ToUpdate =  BeanCopyUtils.copyObject(${classInfo.className?uncap_first}Dto,${classInfo.className}Entity.class);
		//dto convert to entity ...

		int ret = i${classInfo.className}Mapper.update(${classInfo.className?uncap_first}ToUpdate);

		return ret > 0 ? ${returnUtil}.SUCCESS(ret) : ${returnUtil}.ERROR();
	}


	@Override
	public ResponseBaseDTO queryById(int id) {
		${classInfo.className}Entity ${classInfo.className?uncap_first} =  i${classInfo.className}Mapper.queryById(id);
		return 	${classInfo.className?uncap_first} == null ? ResponseBaseDTO.ERROR(ErrorCodeEnum.ERROR_3000.getName()) : ResponseBaseDTO.SUCCESS(${classInfo.className?uncap_first});
	}


<#--	@Override-->
<#--	public ResponseBaseDTO pageList(int offset, int pagesize) {-->

<#--		List<${classInfo.className}Entity> pageList = i${classInfo.className}Mapper.pageList(offset, pagesize);-->
<#--		int totalCount = i${classInfo.className}Mapper.pageListCount(offset, pagesize);-->

<#--		List<${classInfo.className}Dto> ${classInfo.className?uncap_first}DtoList = BeanCopyUtils.copyList(pageList,${classInfo.className}Dto.class);-->


<#--	// result-->
<#--		Map<String, Object> result = new HashMap<String, Object>();-->
<#--		result.put("pageList", pageList);-->
<#--		result.put("totalCount", totalCount);-->

<#--		return ResponseBaseDTO.SUCCESS(result);-->
<#--	}-->

}
