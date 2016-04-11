package com.test.DaoImp;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.test.dao.StationPageDao;
import com.test.hibernateutil.HibernateSessionFactory;
import com.test.model.Station;

public class StationPageDaoImp implements StationPageDao
{
    /**
     * 通过hql语句得到数据库中记录总数
     */
    @Override
    public int getAllRowCount(String hql)
    {
        Session session = HibernateSessionFactory.getSession();
        Transaction txt = session.beginTransaction();
        int allRows = 0;
        try
        {
            txt = session.beginTransaction();
            
            Query query = session.createQuery(hql);
            
            allRows = query.list().size();
            
            txt.commit();
            
        }
        catch (Exception e)
        {
            if(txt != null)
            {
                txt.rollback();
            }
            
            e.printStackTrace();
        }
        finally
        {
            HibernateSessionFactory.closeSession();
        }
        
        return allRows;
    }
    /**
     * 使用hibernate提供的分页功能，得到分页显示的数据
     */
    @SuppressWarnings("unchecked")
    @Override
    public List<Station> queryByPage(String hql, int offset, int pageSize)
    {
        Session session = HibernateSessionFactory.getSession();
        Transaction txt = session.beginTransaction();
        List<Station> list = null;
        
        try
        {
            txt = session.beginTransaction();
            
            Query query = session.createQuery(hql).setFirstResult(offset).setMaxResults(pageSize);
            
            list = query.list();
            
            txt.commit();
            
        }
        catch (Exception e)
        {
            if(txt != null)
            {
                txt.rollback();
            }
            
            e.printStackTrace();
        }
        finally
        {
            HibernateSessionFactory.closeSession();
        }
        
        
        return list;
    }
}