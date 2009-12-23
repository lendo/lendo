package org.census.system;

public class MajorRelation {
    public final static int MR_01 = 1;
    public final static String MR_01_TEXT = "户主";
    
    public final static int MR_02 = 2;
    public final static String MR_02_TEXT = "妻";
    
    public final static int MR_03 = 3;
    public final static String MR_03_TEXT = "子";
    
    public final static int MR_04 = 4;
    public final static String MR_04_TEXT = "女";
    
    public final static int MR_05 = 5;
    public final static String MR_05_TEXT = "次子";
    
    public final static int MR_06 = 6;
    public final static String MR_06_TEXT = "二女";
    
    public final static int MR_07 = 7;
    public final static String MR_07_TEXT = "三子";
    
    public final static int MR_08 = 8;
    public final static String MR_08_TEXT = "三女";
    
    public final static int MR_09 = 9;
    public final static String MR_09_TEXT = "夫";
    
    public final static int MR_10 = 10;
    public final static String MR_10_TEXT = "父亲";
    
    public final static int MR_11 = 11;
    public final static String MR_11_TEXT = "母亲";
    
    public final static int MR_12 = 12;
    public final static String MR_12_TEXT = "祖父";
    
    public final static int MR_13 = 13;
    public final static String MR_13_TEXT = "祖母";
    
    public final static int MR_14 = 14;
    public final static String MR_14_TEXT = "四子";
    
    public final static int MR_15 = 15;
    public final static String MR_15_TEXT = "四女";
    
    public final static int MR_16 = 16;
    public final static String MR_16_TEXT = "孙子";
    
    public final static int MR_17 = 17;
    public final static String MR_17_TEXT = "孙女";
    
    public final static int MR_18 = 18;
    public final static String MR_18_TEXT = "儿媳";
    
    public final static int MR_19 = 19;
    public final static String MR_19_TEXT = "兄";
    
    public final static int MR_20 = 20;
    public final static String MR_20_TEXT = "弟";
    
    public final static int MR_21 = 21;
    public final static String MR_21_TEXT = "继母或养母";
    
    public final static int MR_22 = 22;
    public final static String MR_22_TEXT = "侄子";
    
    public final static int MR_23 = 23;
    public final static String MR_23_TEXT = "外孙女";
    
    public final static int MR_24 = 24;
    public final static String MR_24_TEXT = "弟媳";
    
    public final static int MR_25 = 25;
    public final static String MR_25_TEXT = "长子";
    
    public final static int MR_26 = 26;
    public final static String MR_26_TEXT = "岳父";
    
    public final static int MR_27 = 27;
    public final static String MR_27_TEXT = "岳母";
    
    public static String convert(Integer code){
    	String a = "未设置";
    	
    	if(code==null){
    		return a;
    	}
    	
    	switch(code.intValue()){
    	    case MR_01:
    	    	a = MR_01_TEXT;
    	    	break;
    	    case MR_02:
    	    	a = MR_02_TEXT;
    	    	break;
    	    case MR_03:
    	    	a = MR_03_TEXT;
    	    	break;
    	    case MR_04:
    	    	a = MR_04_TEXT;
    	    	break;
    	    case MR_05:
    	    	a = MR_05_TEXT;
    	    	break;
    	    case MR_06:
    	    	a = MR_06_TEXT;
    	    	break;
    	    case MR_07:
    	    	a = MR_07_TEXT;
    	    	break;
    	    case MR_08:
    	    	a = MR_08_TEXT;
    	    	break;
    	    case MR_09:
    	    	a = MR_09_TEXT;
    	    	break;
    	    case MR_10:
    	    	a = MR_10_TEXT;
    	    	break;
    	    case MR_11:
    	    	a = MR_11_TEXT;
    	    	break;
    	    case MR_12:
    	    	a = MR_12_TEXT;
    	    	break;
    	    case MR_13:
    	    	a = MR_13_TEXT;
    	    	break;
    	    case MR_14:
    	    	a = MR_14_TEXT;
    	    	break;
    	    case MR_15:
    	    	a = MR_15_TEXT;
    	    	break;
    	    case MR_16:
    	    	a = MR_16_TEXT;
    	    	break;
    	    case MR_17:
    	    	a = MR_17_TEXT;
    	    	break;
    	    case MR_18:
    	    	a = MR_18_TEXT;
    	    	break;
    	    case MR_19:
    	    	a = MR_19_TEXT;
    	    	break;
    	    case MR_20:
    	    	a = MR_20_TEXT;
    	    	break;
    	    case MR_21:
    	    	a = MR_21_TEXT;
    	    	break;
    	    case MR_22:
    	    	a = MR_22_TEXT;
    	    	break;
    	    case MR_23:
    	    	a = MR_23_TEXT;
    	    	break;
    	    case MR_24:
    	    	a = MR_24_TEXT;
    	    	break;
    	    case MR_25:
    	    	a = MR_25_TEXT;
    	    	break;
    	    case MR_26:
    	    	a = MR_26_TEXT;
    	    	break;
    	    case MR_27:
    	    	a = MR_27_TEXT;
    	    	break;
    	    default:
    	    	a = "未设置";
    	    	break;
    	}
    	
    	return a;
    }
}
