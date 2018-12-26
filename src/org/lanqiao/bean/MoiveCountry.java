package org.lanqiao.bean;

public class MoiveCountry {
	
	private int id;
	private String CountryName;
	
	public MoiveCountry(int id, String countryName) {
		this.id = id;
		CountryName = countryName;
	}

	public MoiveCountry(String countryName) {
		CountryName = countryName;
	}



	public MoiveCountry() {
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCountryName() {
		return CountryName;
	}

	public void setCountryName(String countryName) {
		CountryName = countryName;
	}
	
	
	
}
