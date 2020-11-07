import java.util.Map;
import ${packageName}.base.dto.${classInfo.className}Dto;

/**
 * @author ${authorName}
 * @Version 1.0.0
 * @date ${.now?string('yyyy-MM-dd')}
 * @description ${classInfo.classComment}
 */
public interface I${classInfo.className}Service {

    /**
     * 新增
     */
    public ResponseBaseDTO insert(${classInfo.className}Dto ${classInfo.className?uncap_first}Dto);

    /**
     * 删除
     */
    public ResponseBaseDTO delete(int id);

    /**
     * 更新
     */
    public ResponseBaseDTO update(${classInfo.className}Dto ${classInfo.className?uncap_first}Dto);

    /**
     * 根据主键 id 查询
     */
    public ResponseBaseDTO queryById(int id);

    /**
     * 分页查询
     */
    public ResponseBaseDTO pageList(int offset, int pagesize);

}
