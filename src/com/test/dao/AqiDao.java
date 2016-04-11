package com.test.dao;

import java.util.List;

import com.test.model.Aqi;

/**
 * AQI接口
 * @author 凌云客
 *
 */
public interface AqiDao {
	public void save(Aqi aqi);
	public void update(Aqi aqi);
	public void delete(int id);
	public Aqi fingById(int id);
	public List findAll();

}
