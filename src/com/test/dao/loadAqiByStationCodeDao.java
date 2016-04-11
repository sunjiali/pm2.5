package com.test.dao;

import java.util.List;

/**按监测站点编号查询AQI列表接口
 * @author 凌云客
 *
 */
public interface loadAqiByStationCodeDao {
	public List loadAqiByStationCode(String stationCode);

}
