package cn.saker.test.util;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import junit.framework.TestCase;
import cn.saker.util.SqlUtil;

public class SqlUtilTest extends TestCase {
    public void test(){
    	StringBuffer sql = new StringBuffer("select * from account left join account on 1=1 where id=1 union select * from account left join account on 1=1 where id=2");
    	Map map = SqlUtil.getRetrieveTables(sql.toString(), true);
    	if(map!=null){
    		Set keySet = map.keySet();
    		if(keySet!=null){
    			Iterator it = keySet.iterator();
    			while(it.hasNext()){
    				Object key = it.next();
    				System.out.println(map.get(key));
    			}
    		}
    	}
    }
}
