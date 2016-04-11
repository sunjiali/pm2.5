package com.test.action;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.swing.text.rtf.RTFEditorKit;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;
import com.test.DaoImp.CityDaoImp;
import com.test.dao.CityDao;
import com.test.model.City;

public class CityAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String area;
	private City city =new City();
	private List<City> list; 
	CityDao cityDao=new CityDaoImp();
	public City getCity() {
		return city;
	}
	public void setCity(City city) {
		this.city = city;
	}
	public List<City> getList() {
		return list;
	}
	public void setList(List<City> list) {
		this.list = list;
	}
	public CityDao getCityDao() {
		return cityDao;
	}
	public void setCityDao(CityDao cityDao) {
		this.cityDao = cityDao;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String add(){
		cityDao.save(city);
		
		return SUCCESS;
		
	}
	public String delete() throws UnsupportedEncodingException{
		HttpServletRequest request = ServletActionContext.getRequest(); 
		String area = new String( request.getParameter("area").getBytes("iso8859-1"), "utf-8");
		
		cityDao.delete(area);
		return SUCCESS;
	}
	 public String update(){
		 cityDao.update(city);
		 return SUCCESS;
	 }
	 public String list(){
		list= cityDao.findAll();


		 return SUCCESS;
	 }
	public String addInput(){
		
		return INPUT;
	}
	public String updateInput() throws UnsupportedEncodingException{
		HttpServletRequest request = ServletActionContext.getRequest(); 
		String area = new String( request.getParameter("area").getBytes("iso8859-1"), "utf-8");
		city = cityDao.findByArea(area);
		     return SUCCESS;
	}
	    
}
