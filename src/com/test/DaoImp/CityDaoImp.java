package com.test.DaoImp;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.test.dao.CityDao;
import com.test.model.City;
import com.test.hibernateutil.HibernateSessionFactory;

/**
 * 城市名称实体类
 * @author 凌云客
 *
 */
public class CityDaoImp implements CityDao {

	@Override
	public void save(City city) {
		// TODO Auto-generated method stub
		Session session = HibernateSessionFactory.getSession();
		Transaction txt = session.beginTransaction();
		session.save(city);
		txt.commit();
		session.close();

	}

	@Override
	public void update(City city) {
		// TODO Auto-generated method stub
		Session session = HibernateSessionFactory.getSession();
		Transaction txt = session.beginTransaction();
		session.saveOrUpdate(city);
		txt.commit();
		session.close();

	}

	@Override
	public void delete(String area) {
		// TODO Auto-generated method stub
		Session session = HibernateSessionFactory.getSession();
		Transaction txt = session.beginTransaction();
		City city = (City) session.get(City.class, area);
		session.delete(city);
		txt.commit();

	}

	@Override
	public City findByArea(String area) {
		// TODO Auto-generated method stub
		Session session = HibernateSessionFactory.getSession();
		Transaction txt = session.beginTransaction();
		try {
			City city = (City) session.get(City.class, area);
			txt.commit();
			return city;
		} catch (Exception e) {
			e.printStackTrace();
			txt.rollback();
		} finally {

			session.close();
		}
		return null;

	}

	@Override
	public List<City> findAll() {
		// TODO Auto-generated method stub
		Session session = HibernateSessionFactory.getSession();
		Transaction txt = session.beginTransaction();
		List<City> list =new ArrayList<City> ();
		try{
			String hql ="from City";
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
