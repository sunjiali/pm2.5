package com.test.model;

import java.util.HashSet;
import java.util.Set;
import java.util.TreeSet;

/**
 * Station entity. @author MyEclipse Persistence Tools
 */

/**
 * 监测站点实体类
 * @author 凌云客
 *
 */
public class Station implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String stationCode;
	private String positionName;
	private String area;
	private Set<Aqi> aqis = new TreeSet<Aqi>();

	// Constructors

	/** default constructor */
	public Station() {
	}

	/** full constructor */
	public Station(String positionName, String area, Set<Aqi> aqis) {
		this.positionName = positionName;
		this.area = area;
		this.aqis = aqis;
	}

	// Property accessors

	public String getStationCode() {
		return this.stationCode;
	}

	public void setStationCode(String stationCode) {
		this.stationCode = stationCode;
	}

	public String getPositionName() {
		return this.positionName;
	}

	public void setPositionName(String positionName) {
		this.positionName = positionName;
	}

	public String getArea() {
		return this.area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public Set<Aqi> getAqis() {
		return this.aqis;
	}

	public void setAqis(Set<Aqi> aqis) {
		this.aqis = aqis;
	}

}