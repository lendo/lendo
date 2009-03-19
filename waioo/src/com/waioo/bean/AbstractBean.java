package com.waioo.bean;

import java.beans.PropertyChangeListener;
import java.beans.PropertyChangeSupport;

public class AbstractBean {
	protected PropertyChangeSupport changeSupport;
	
	protected AbstractBean(){
		changeSupport = new PropertyChangeSupport(this);
	    PropertyChangeListener listener = new WaiooPropertyChangeListener();
	    
	    this.addPropertyChangeListener(listener);
	}
	
	protected AbstractBean(String a){
		
	}

	private void addPropertyChangeListener(PropertyChangeListener l) {
        changeSupport.addPropertyChangeListener(l);
    }

	private void removePropertyChangeListener(PropertyChangeListener l) {
        changeSupport.removePropertyChangeListener(l);
    }

	
}
