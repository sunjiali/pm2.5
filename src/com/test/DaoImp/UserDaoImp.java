package com.test.DaoImp;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.test.dao.UserDao;
import com.test.hibernateutil.HibernateSessionFactory;
import com.test.model.City;
import com.test.model.Station;
import com.test.model.User;

public class UserDaoImp implements UserDao{

	@Override
	public void save(User user) {
		// TODO Auto-generated method stub
		Session session = HibernateSessionFactory.getSession();
		Transaction txt = session.beginTransaction();
		session.save(user);
		txt.commit();
		session.close();
		
	}

	@Override
	public void update(User user) {
		// TODO Auto-generated method stub
		Session session = HibernateSessionFactory.getSession();
		Transaction txt = session.beginTransaction();
		session.saveOrUpdate(user);
		txt.commit();
		session.close();
		
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		Session session = HibernateSessionFactory.getSession();
		Transaction txt = session.beginTransaction();
		User user = (User) session.get(User.class, id);
		session.delete(user);
		txt.commit();
		
	}

	@Override
	public User findById(int id) {
		// TODO Auto-generated method stub
		Session session = HibernateSessionFactory.getSession();
		Transaction txt = session.beginTransaction();
		try {
			User user = (User) session.get(User.class, id);
			txt.commit();
			return user;
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
		List<User> list =new ArrayList<User> ();
		try{
			String hql ="from User";
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
