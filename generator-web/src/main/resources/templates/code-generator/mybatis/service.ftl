import java.util.Map;

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
    public ReturnT<String> insert(${classInfo.className} ${classInfo.className?uncap_first});

    /**
    * 删除
    */
    public ReturnT<String> delete(int id);

    /**
    * 更新
    */
    public ReturnT<String> update(${classInfo.className} ${classInfo.className?uncap_first});

    /**
    * 根据主键 id 查询
    */
    public ${classInfo.className} load(int id);

    /**
    * 分页查询
    */
    public Map<String,Object> pageList(int offset, int pagesize);

}
