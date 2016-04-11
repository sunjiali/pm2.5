package com.test.action;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.test.DaoImp.StationDaoImp;
import com.test.dao.StationDao;
import com.test.model.Station;

public class StationAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String stationCode;
	private Station station;
	private List<Station> list;
	StationDao stationDao=new StationDaoImp();
	
	public String getStationCode() {
		return stationCode;
	}
	public void setStationCode(String stationCode) {
		this.stationCode = stationCode;
	}
	public Station getStation() {
		return station;
	}
	public void setStation(Station station) {
		this.station = station;
	}
	public List<Station> getList() {
		return list;
	}
	public void setList(List<Station> list) {
		this.list = list;
	}
	public StationDao getStationDao() {
		return stationDao;
	}
	public void setStationDao(StationDao stationDao) {
		this.stationDao = stationDao;
	}
	//添加监测站点
	public String add(){
		stationDao.save(station);
		return SUCCESS;
	}
	//更新监测站点
	public String update(){
		stationDao.update(station);
		return SUCCESS;
	}
	//删除监测站点
	public String delete() throws UnsupportedEncodingException{
		HttpServletRequest request = ServletActionContext.getRequest(); 
		String stationCode = new String( request.getParameter("stationCode").getBytes("iso8859-1"), "utf-8");
		stationDao.delete(stationCode);
		return SUCCESS;
	}
	//查询监测站点列表
	public String list(){
		list=stationDao.findAll();
		return SUCCESS;
	}
	public String addInput(){
		return INPUT;
	}	
	public String updateInput() throws UnsupportedEncodingException{
		HttpServletRequest request = ServletActionContext.getRequest(); 
		String stationCode = new String( request.getParameter("stationCode").getBytes("iso8859-1"), "utf-8");
		station=stationDao.findByStationCode(stationCode);
		
		return INPUT;
	}	

}
