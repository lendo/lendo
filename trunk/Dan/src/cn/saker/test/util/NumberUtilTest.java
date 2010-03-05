package cn.saker.test.util;

import cn.saker.util.NumberUtil;
import junit.framework.Assert;
import junit.framework.TestCase;

public class NumberUtilTest extends TestCase {
    public void testConvertDouble(){
    	Double doubleNull = NumberUtil.convertDouble(null);
    	Assert.assertNull(doubleNull);
    	
    	Double doubleInteger = NumberUtil.convertDouble(new Double(9.0489898));
    	System.out.println(doubleInteger);
    	Assert.assertEquals(doubleInteger, new Double(9.05));
    }
}
