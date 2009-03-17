package com.waioo.bean;

import java.beans.IndexedPropertyChangeEvent;
import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;
import java.beans.PropertyChangeSupport;
import java.util.HashMap;
import java.util.Map;

public class IndexedSampleBean {
	private PropertyChangeSupport changeSupport;
	   
    private Map names;
  
    private String title;
  
    public IndexedSampleBean() {
      changeSupport = new PropertyChangeSupport(this);
      names = new HashMap();
    }
  
    public void setTitle(String title) {
      String oldTitle = this.title;
      this.title = title;
      changeSupport.firePropertyChange("title", oldTitle, title);
    }
  
    public String getTitle() {
      return title;
    }
  
    public void setName(int index, String name) {
        String oldName = (String)names.get(new Integer(index));
        names.put(new Integer(index), name);
        changeSupport.fireIndexedPropertyChange("name", index,oldName, name);
    }
  
    public String getName(int index) {
      return (String)names.get(index);
    }
  
    public void addPropertyChangeListener(PropertyChangeListener l) {
        changeSupport.addPropertyChangeListener(l);
    }

    public void removePropertyChangeListener(PropertyChangeListener l) {
        changeSupport.removePropertyChangeListener(l);
    }
  
    public static void main(String[] args) throws Exception {
      IndexedSampleBean bean = new IndexedSampleBean();
      PropertyChangeListener listener = 
        new PropertyChangeListener() {
          public void propertyChange(PropertyChangeEvent pce) {
            String name = pce.getPropertyName();
            if (pce instanceof IndexedPropertyChangeEvent) {
              IndexedPropertyChangeEvent ipce = (IndexedPropertyChangeEvent) pce;
              int index = ipce.getIndex();
              System.out.print("Property: " + name +
                "; index: " + index);
            } else {
              System.out.print("Property: " + name);
            }
            System.out.println("; value: " + pce.getNewValue());
          }
      };
      bean.addPropertyChangeListener(listener);
      bean.setName(1, "John");
      bean.setName(2, "Ed");
      bean.setName(3, "Mary");
      bean.setName(4, "Joan");
      bean.setName(1, "DuDan");
      bean.setTitle("Captain");
      System.out.println("Name at 1 is: " + bean.getName(1));
    }

}
