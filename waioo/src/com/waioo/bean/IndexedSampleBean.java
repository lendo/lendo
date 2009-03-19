package com.waioo.bean;

import java.util.HashMap;
import java.util.Map;

import com.waioo.util.Date;

public class IndexedSampleBean extends AbstractBean {
	
    private Map names;
  
    private String title;
  
    public IndexedSampleBean() {
        names = new HashMap();
    }
  
    public void setTitle(String title) {
      changeSupport.firePropertyChange("title", this.title, title);
      this.title = title;
    }
  
    public String getTitle() {
      return title;
    }
  
    public void setName(int index, String name) {
        changeSupport.fireIndexedPropertyChange("name", index,(String)names.get(new Integer(index)), name);
        names.put(new Integer(index), name);
    }
  
    public String getName(int index) {
      return (String)names.get(index);
    }
  
    public static void main(String[] args) throws Exception {
      IndexedSampleBean bean = new IndexedSampleBean();
      bean.setName(1, "John");
      bean.setName(2, "Ed");
      bean.setName(3, "Mary");
      bean.setName(4, "Joan");
      bean.setTitle("Captain");
      
      DateBean db = new DateBean();
      db.setDate(new Date());
      db.setName("Alex");
    }

}
