import org.springframework.stereotype.Service;
import ${packageName}.mapper.I${classInfo.className}Mapper;
import ${packageName}.entity.${classInfo.className};
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
		${classInfo.className} ${classInfo.className?uncap_first} = new ${classInfo.className}();
		//dto convert to entity ...

		int ret = i${classInfo.className}Mapper.insert(${classInfo.className?uncap_first});
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
		${classInfo.className} ${classInfo.className?uncap_first} = queryById(${classInfo.className?uncap_first}Dto.getId());
		if (${classInfo.className?uncap_first}Dto == null) {
			return ${returnUtil}.ERROR("未查到相关数据!");
		}
		${classInfo.className} ${classInfo.className?uncap_first}ToUpdate = new ${classInfo.className}();
		//dto convert to entity ...

		int ret = i${classInfo.className}Mapper.update(${classInfo.className?uncap_first}ToUpdate);

		return ret > 0 ? ${returnUtil}.SUCCESS(ret) : ${returnUtil}.ERROR();
	}


	@Override
	public ResponseBaseDTO queryById(int id) {
		${classInfo.className} ${classInfo.className?uncap_first} =  i${classInfo.className}Mapper.queryById(id);
		return 	${classInfo.className?uncap_first} == null ? ResponseBaseDTO.ERROR(ErrorCodeEnum.ERROR_3000.getName()) : ResponseBaseDTO.SUCCESS(${classInfo.className?uncap_first});
	}


	@Override
	public ResponseBaseDTO pageList(int offset, int pagesize) {

		List<${classInfo.className}> pageList = i${classInfo.className}Mapper.pageList(offset, pagesize);
		int totalCount = i${classInfo.className}Mapper.pageListCount(offset, pagesize);

		// result
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("pageList", pageList);
		result.put("totalCount", totalCount);

		return ResponseBaseDTO.SUCCESS(result);
	}

}
