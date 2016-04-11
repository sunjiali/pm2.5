package com.test.util;

import java.util.Comparator;

import com.test.model.Aqi;

public class aqiSort implements Comparator {

	@Override
	public int compare(Object o1, Object o2) {
		// TODO Auto-generated method stub
		Aqi aqi1 = (Aqi)o1;
		Aqi aqi2 = (Aqi)o2;
		Integer aqiId =aqi1.getId();
		Integer aqiId2=aqi2.getId();
		return aqiId<aqiId2?1:(aqiId==aqiId2?0:-1);
	}

}
