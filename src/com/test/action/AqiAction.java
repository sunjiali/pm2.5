package com.test.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.test.DaoImp.AqiDaoImp;
import com.test.dao.AqiDao;
import com.test.model.Aqi;

public class AqiAction extends ActionSupport{
	private int id;
	private Aqi aqi;
	private List<Aqi> list;
	AqiDao aqiDao=new AqiDaoImp();
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public AqiDao getAqiDao() {
		return aqiDao;
	}
	public void setAqiDao(AqiDao aqiDao) {
		this.aqiDao = aqiDao;
	}
	
	//添加AQI
	public String add(){
		
		aqiDao.save(aqi);
		return SUCCESS;
	}
	//删除AQI
	public String delete(){
		HttpServletRequest request = ServletActionContext.getRequest(); 
	     int id=Integer.parseInt(request.getParameter("id"));
		aqiDao.delete(id);
		return SUCCESS;
	}
	public String update(){
		aqiDao.update(aqi);
		return SUCCESS;
	}
	public String addInput(){
		return INPUT;
	}
	public String updateInput(){
		HttpServletRequest request = ServletActionContext.getRequest(); 
	     int id=Integer.parseInt(request.getParameter("id"));
	     aqi=aqiDao.fingById(id);
	     return INPUT;
	}
	//AQI列表
	public String list(){
		list=aqiDao.findAll();
		return SUCCESS;
		
	}

}
