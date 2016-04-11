package com.test.service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.test.dao.loadAqiByStationCodeDao;
import com.test.hibernateutil.HibernateSessionFactory;
import com.test.model.Aqi;
import com.test.model.Station;

/**
 * 按监测站点编号加载监测站点下的aqi
 * @author 凌云客
 *
 */
public class loadAqiByStationCodeDaoImp implements loadAqiByStationCodeDao{

	@Override
	public List loadAqiByStationCode(String stationCode) {
		// TODO Auto-generated method stub
		Session session = HibernateSessionFactory.getSession();
		Transaction txt = session.beginTransaction();
		Station station = (Station)session.get(Station.class, stationCode);
		Set<Aqi> aqis = station.getAqis();
		List<Aqi> list =new ArrayList<Aqi>(aqis);
		txt.commit();
		session.close();
		return list;
		
	}
	

}
