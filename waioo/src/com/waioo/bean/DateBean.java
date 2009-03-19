package com.waioo.bean;

import com.waioo.util.Date;

public class DateBean extends AbstractBean {
    private String name = null;
    private Date date = null;
    
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		changeSupport.firePropertyChange("date", this.date, date);
		this.date = date;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		changeSupport.firePropertyChange("name", this.name, name);
		this.name = name;
	}
    
    
}
