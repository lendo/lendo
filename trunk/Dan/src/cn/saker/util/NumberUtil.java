package cn.saker.util;

import java.text.DecimalFormat;
import java.text.NumberFormat;

public class NumberUtil {
	
    public static Double convertDouble(Number amount){
    	Double validAmount = null;
    	
    	if(amount!=null){
    		NumberFormat formater = new DecimalFormat("##0.00");
        	String amountText = formater.format(amount);
        	validAmount = Double.valueOf(amountText);
    	}
    	
    	return validAmount;
    }
    
}
