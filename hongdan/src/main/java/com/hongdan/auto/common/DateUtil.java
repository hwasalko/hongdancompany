package com.hongdan.auto.common;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {

	public static String getCurrentTime(){
		final SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
		final Date currentTime = new Date();
		return df.format(currentTime);
	}
	
	public static String getCurrentDate(){
		final SimpleDateFormat df = new SimpleDateFormat("yyyyMMdd");
		final Date currentTime = new Date();
		return df.format(currentTime);
	}
}
