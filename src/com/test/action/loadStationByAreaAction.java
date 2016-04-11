package com.test.action;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.test.dao.loadStationByAreaDao;
import com.test.model.Station;
import com.test.service.loadStationByAreaDaoImp;

public class loadStationByAreaAction extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String area;
	private Station station = new Station();
	private List<Station> list;
	private loadStationByAreaDao loadstationByArea = new  loadStationByAreaDaoImp();
	
	

	public String getArea() {
		return area;
	}



	public void setArea(String area) {
		this.area = area;
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



	public loadStationByAreaDao getLoadstationByArea() {
		return loadstationByArea;
	}



	public void setLoadstationByArea(loadStationByAreaDao loadstationByArea) {
		this.loadstationByArea = loadstationByArea;
	}



	public String loadStationByArea() throws UnsupportedEncodingException{
//		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(
//				org.apache.struts2.StrutsStatics.HTTP_REQUEST);
//				String[] querys = request.getQueryString().split("&");  
//				for (int i = 0; i < querys.length; i++) {  
//				    if (querys[i].indexOf("area") > -1) {  
//				        area = new String(querys[i].getBytes("iso-8859-1"), "utf-8").split("area=")[1];  
//				    }  
//				}  

		
		HttpServletRequest request = ServletActionContext.getRequest(); 
		 area = new String( request.getParameter("area").getBytes("iso8859-1"), "utf-8");
		//这里的area不是乱码？
		list = loadstationByArea.loadStationByArea(area);
		//这里没有传area啊
		return SUCCESS;
	} 

}
