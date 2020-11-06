import org.springframework.stereotype.Service;

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
public class I${classInfo.className}ServiceImpl implements ${classInfo.className}Service {

	@Resource
	private I${classInfo.className}Mapper i${classInfo.className?uncap_first}Mapper;


	@Override
	public ReturnT<String> insert(${classInfo.className} ${classInfo.className?uncap_first}) {

		// valid
		if (${classInfo.className?uncap_first} == null) {
			return ${returnUtil}.ERROR("必要参数缺失");
        }

		i${classInfo.className?uncap_first}Mapper.insert(${classInfo.className?uncap_first});
        return ${returnUtil}.SUCCESS;
	}


	@Override
	public ReturnT<String> delete(int id) {
		int ret = i${classInfo.className?uncap_first}Mapper.delete(id);
		return ret>0?${returnUtil}.SUCCESS():${returnUtil}.ERROR();
	}


	@Override
	public ReturnT<String> update(${classInfo.className} ${classInfo.className?uncap_first}) {
		int ret = i${classInfo.className?uncap_first}Mapper.update(${classInfo.className?uncap_first});
		return ret>0?${returnUtil}.SUCCESS():${returnUtil}.ERROR();
	}


	@Override
	public ${classInfo.className} load(int id) {
		return i${classInfo.className?uncap_first}Mapper.load(id);
	}


	@Override
	public Map<String,Object> pageList(int offset, int pagesize) {

		List<${classInfo.className}> pageList = ${classInfo.className?uncap_first}Mapper.pageList(offset, pagesize);
		int totalCount = i${classInfo.className?uncap_first}Mapper.pageListCount(offset, pagesize);

		// result
		Map<String , Object> result = new HashMap<String , Object>();
		result.put("pageList", pageList);
		result.put("totalCount", totalCount);

		return result;
	}

}
