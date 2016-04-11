package com.test.DaoImp;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.junit.Test;

import com.test.dao.AqiDao;
import com.test.hibernateutil.HibernateSessionFactory;
import com.test.model.Aqi;
import com.test.model.City;
import com.test.model.Station;

/**
 * AQI实现类
 * @author 凌云客
 *
 */
public class AqiDaoImp implements AqiDao {

	@Override
	public void save(Aqi aqi) {
		// TODO Auto-generated method stub
		Session session = HibernateSessionFactory.getSession();
		Transaction txt = session.beginTransaction();
		session.save(aqi);
		txt.commit();
		session.close();

	}

	@Override
	public void update(Aqi aqi) {
		// TODO Auto-generated method stub
		Session session = HibernateSessionFactory.getSession();
		Transaction txt = session.beginTransaction();
		session.saveOrUpdate(aqi);
		txt.commit();
		session.close();

	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		Session session = HibernateSessionFactory.getSession();
		Transaction txt = session.beginTransaction();
		Aqi aqi = (Aqi) session.get(Aqi.class, id);
		session.delete(aqi);
		txt.commit();

	}

	@Override
	public Aqi fingById(int id) {
		// TODO Auto-generated method stub
		Session session = HibernateSessionFactory.getSession();
		Transaction txt = session.beginTransaction();
		try {
			Aqi aqi = (Aqi) session.get(Aqi.class, id);
			txt.commit();
			return aqi;
		} catch (Exception e) {
			e.printStackTrace();
			txt.rollback();
		} finally {

			session.close();
		}
		return null;
	}
	@Test
	@Override
	public List findAll() {
		// TODO Auto-generated method stub
		Session session = HibernateSessionFactory.getSession();
		Transaction txt = session.beginTransaction();
		List<Aqi> list =new ArrayList<Aqi> ();
		try{
			String hql ="from Aqi";
			Query query=session.createQuery(hql);
			list=query.list();
			System.out.println(list);
			txt.commit();
			
			
			
		}catch(Exception e){
			e.printStackTrace();
			
		}finally{
			session.close();
		}		
		
		return list;
	}
	
	
	
	
	
	
	

}
