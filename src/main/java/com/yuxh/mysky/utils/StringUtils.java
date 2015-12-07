package com.yuxh.mysky.utils;

public class StringUtils {

	public static boolean isNull(String pageNo) {
		if(pageNo==null||"".equals(pageNo.trim())){
			return false;
		}else{
			return true;
		}
	}

}
