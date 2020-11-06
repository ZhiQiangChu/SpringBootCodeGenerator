
import java.util.List;

/**
* @author ${authorName}
* @Version 1.0.0
* @date ${.now?string('yyyy-MM-dd')}
* @description ${classInfo.classComment}
*/
public interface I${classInfo.className}DAO {

    int add(${classInfo.className} ${classInfo.className?uncap_first});

    int update(${classInfo.className} ${classInfo.className?uncap_first});

    int delete(int id);

    ${classInfo.className} findById(int id);

    List<${classInfo.className}> findAllList(Map<String,Object> param);

}
