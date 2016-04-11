package com.test.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.test.dao.loadAqiByStationCodeDao;
import com.test.model.Aqi;
import com.test.service.loadAqiByStationCodeDaoImp;

public class loadAqiByStationAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String stationCode;
	private Aqi aqi = new Aqi();
	private List<Aqi> list;
	private loadAqiByStationCodeDao loadAqi = new loadAqiByStationCodeDaoImp();
	public String getStationCode() {
		return stationCode;
	}
	public void setStationCode(String stationCode) {
		this.stationCode = stationCode;
	}
	public Aqi getAqi() {
		return aqi;
	}
	public void setAqi(Aqi aqi) {
		this.aqi = aqi;
	}
	public List<Aqi> getList() {
		return list;
	}
	public void setList(List<Aqi> list) {
		this.list = list;
	}
	public loadAqiByStationCodeDao getLoadAqi() {
		return loadAqi;
	}
	public void setLoadAqi(loadAqiByStationCodeDao loadAqi) {
		this.loadAqi = loadAqi;
	}
	
	public String loadAqiByStation(){
		list=loadAqi.loadAqiByStationCode(stationCode);
		return SUCCESS;
	}

}
