package com.test.dao;

import java.util.List;

import com.test.model.City;

/**
 * 城市接口
 * @author 凌云客
 *
 */
public interface CityDao {
	public void save(City city);
	public void update (City city);
	public void delete(String area);
	public City findByArea(String area);
	public List findAll();
	

}
