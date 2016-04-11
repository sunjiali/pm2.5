package com.test.model;

/**
 * Aqi entity. @author MyEclipse Persistence Tools
 */

public class Aqi implements java.io.Serializable {

	// Fields

	/**
	 * AQI实体类
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
//	private String stationCode;
	private Integer aqi;
	private Float so2;
	private Float no2;
	private Integer pm10;
	private Float co;
	private Integer o3;
	private Integer o38h;
	private Integer pm25;
	private String primaryPollutant;
	private String quality;
	private String timePoint;
	private Station station;
	// Constructors

	/** default constructor */
	public Aqi() {
	}

	public Station getStation() {
		return station;
	}

	public void setStation(Station station) {
		this.station = station;
	}

	/** full constructor 
	 * @param station_code 
	 * @param stationCode */
	public Aqi( String stationCode,Integer aqi, Float so2, Float no2,
			Integer pm10, Float co, Integer o3, Integer o38h, Integer pm25,
			String primaryPollutant, String quality, String timePoint) {
		//this.stationCode = stationCode;
		this.aqi = aqi;
		this.so2 = so2;
		this.no2 = no2;
		this.pm10 = pm10;
		this.co = co;
		this.o3 = o3;
		this.o38h = o38h;
		this.pm25 = pm25;
		this.primaryPollutant = primaryPollutant;
		this.quality = quality;
		this.timePoint = timePoint;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

//
//	public String getStationCode() {
//		return stationCode;
//	}
//
//	public void setStationCode(String stationCode) {
//		this.stationCode = stationCode;
//	}

	public Integer getAqi() {
		return this.aqi;
	}

	public void setAqi(Integer aqi) {
		this.aqi = aqi;
	}

	public Float getSo2() {
		return this.so2;
	}

	public void setSo2(Float so2) {
		this.so2 = so2;
	}

	public Float getNo2() {
		return this.no2;
	}

	public void setNo2(Float no2) {
		this.no2 = no2;
	}

	public Integer getPm10() {
		return this.pm10;
	}

	public void setPm10(Integer pm10) {
		this.pm10 = pm10;
	}

	public Float getCo() {
		return this.co;
	}

	public void setCo(Float co) {
		this.co = co;
	}

	public Integer getO3() {
		return this.o3;
	}

	public void setO3(Integer o3) {
		this.o3 = o3;
	}

	public Integer getO38h() {
		return this.o38h;
	}

	public void setO38h(Integer o38h) {
		this.o38h = o38h;
	}

	public Integer getPm25() {
		return this.pm25;
	}

	public void setPm25(Integer pm25) {
		this.pm25 = pm25;
	}

	public String getPrimaryPollutant() {
		return this.primaryPollutant;
	}

	public void setPrimaryPollutant(String primaryPollutant) {
		this.primaryPollutant = primaryPollutant;
	}

	public String getQuality() {
		return this.quality;
	}

	public void setQuality(String quality) {
		this.quality = quality;
	}

	public String getTimePoint() {
		return this.timePoint;
	}

	public void setTimePoint(String timePoint) {
		this.timePoint = timePoint;
	}

	
}