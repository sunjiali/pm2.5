package com.test.dao;

import java.util.List;

import com.test.model.Station;

/**监测站点分页接口
 * @author 凌云客
 *
 */
public interface StationPageDao {
	    public List<Station> queryByPage(String hql, int offset, int pageSize);
	    
	    public int getAllRowCount(String hql);
}
