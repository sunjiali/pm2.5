package com.test.dao;

import java.util.List;

import com.test.model.Aqi;

public interface AqiPageDAO
{
    public List<Aqi> queryByPage(String hql, int offset, int pageSize);
    
    public int getAllRowCount(String hql);
}