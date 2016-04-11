package com.test.dao;

import java.util.List;

import com.test.model.Station;

/**监测站点接口
 * @author 凌云客
 *
 */
public interface StationDao {
	public void save(Station station);
	public void update(Station station);
	public void delete (String stationCode);
	public Station findByStationCode(String stationCode);
	public List findAll();
	

}
