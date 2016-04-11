package com.test.service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.junit.Test;

import com.test.dao.loadStationByAreaDao;
import com.test.hibernateutil.HibernateSessionFactory;
import com.test.model.Aqi;
import com.test.model.City;
import com.test.model.Station;

/**
 * 按城市名称加载监测站点列表  实现类
 * @author 凌云客
 *
 */
public class loadStationByAreaDaoImp implements loadStationByAreaDao{
@Test
	@Override
	public List<Station> loadStationByArea(String area) {
		// TODO Auto-generated method stub
		Session session = HibernateSessionFactory.getSession();
		Transaction txt = session.beginTransaction();
		City city = (City)session.get(City.class,area);
		Set<Station> stations = city.getStations();
		List<Station> list = new ArrayList<Station>(stations);
//		Iterator<Station> sta=stations.iterator();
//		while(sta.hasNext()){
//			Station station = sta.next();
//			System.out.println(station.getPositionName());
//			List<Aqi> list1=new ArrayList<Aqi>(station.getAqis());
//			Collections.sort(list1);
//		}
		
		
		txt.commit();
		session.close();
		return list;
	}

	
	
}

