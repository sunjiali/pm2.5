package com.test.DaoImp;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.test.dao.StationDao;
import com.test.hibernateutil.HibernateSessionFactory;
import com.test.model.City;
import com.test.model.Station;

/**
 * 
 * 监测站点实现类
 * @author 凌云客
 *
 */
public class StationDaoImp implements StationDao{

	@Override
	public void save(Station station) {
		// TODO Auto-generated method stub
		Session session = HibernateSessionFactory.getSession();
		Transaction txt = session.beginTransaction();
		session.save(station);
		txt.commit();
		session.close();

	
		
	}

	@Override
	public void update(Station station) {
		// TODO Auto-generated method stub
		Session session = HibernateSessionFactory.getSession();
		Transaction txt = session.beginTransaction();
		session.saveOrUpdate(station);
		txt.commit();
		session.close();
		
	}

	@Override
	public void delete(String stationCode) {
		// TODO Auto-generated method stub
		Session session = HibernateSessionFactory.getSession();
		Transaction txt = session.beginTransaction();
		Station station = (Station) session.get(City.class, stationCode);
		session.delete(station);
		txt.commit();
		
	}

	@Override
	public Station findByStationCode(String stationCode) {
		// TODO Auto-generated method stub
		Session session = HibernateSessionFactory.getSession();
		Transaction txt = session.beginTransaction();
		try {
			Station station = (Station) session.get(Station.class, stationCode);
			txt.commit();
			return station;
		} catch (Exception e) {
			e.printStackTrace();
			txt.rollback();
		} finally {

			session.close();
		}
		return null;
	}

	@Override
	public List findAll() {
		// TODO Auto-generated method stub
		Session session = HibernateSessionFactory.getSession();
		Transaction txt = session.beginTransaction();
		List<City> list =new ArrayList<City> ();
		try{
			String hql ="from Station";
			Query query=session.createQuery(hql);
			list=query.list();
			txt.commit();
			
			
			
		}catch(Exception e){
			e.printStackTrace();
			
		}finally{
			session.close();
		}		
		
		return list;
	}


}
