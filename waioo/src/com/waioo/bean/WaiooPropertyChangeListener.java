package com.waioo.bean;

import java.beans.IndexedPropertyChangeEvent;
import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;

public class WaiooPropertyChangeListener implements PropertyChangeListener {
    public void propertyChange(PropertyChangeEvent pce) {
        String name = pce.getPropertyName();
        if (pce instanceof IndexedPropertyChangeEvent) {
          IndexedPropertyChangeEvent ipce = (IndexedPropertyChangeEvent) pce;
          int index = ipce.getIndex();
          System.out.print("Property: " + name + "; index: " + index);
        } else {
          System.out.print("Property: " + name);
        }
        System.out.println("; value: " + pce.getNewValue());
    }
}
