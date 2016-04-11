package com.test.model;

import java.util.HashSet;
import java.util.Set;
import java.util.TreeSet;

/**
 * City entity. @author MyEclipse Persistence Tools
 */

/**
 * 城市实体类
 * @author 凌云客
 *
 */
public class City implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String area;
	private Set<Station> stations = new TreeSet<Station>();
	// Constructors

	/** default constructor */
	
	public City() {
	}

	// Property accessors

	public String getArea() {
		return this.area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public Set<Station> getStations() {
		return stations;
	}

	public void setStations(Set<Station> stations) {
		this.stations = stations;
	}
	

}