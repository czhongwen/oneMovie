package org.lanqiao.bean;

import java.util.List;

public class PageTopInfo {

	private List<MoiveType> moiveType ; //电影所属流派
	private List<MoiveCountry> moiveCountry ;//电影所属国际
	
	public PageTopInfo() {
		
	}

	public PageTopInfo(List<MoiveType> moiveType, List<MoiveCountry> moiveCountry) {
		this.moiveType = moiveType;
		this.moiveCountry = moiveCountry;
	}

	public List<MoiveType> getMoiveType() {
		return moiveType;
	}

	public void setMoiveType(List<MoiveType> moiveType) {
		this.moiveType = moiveType;
	}

	public List<MoiveCountry> getMoiveCountry() {
		return moiveCountry;
	}

	public void setMoiveCountry(List<MoiveCountry> moiveCountry) {
		this.moiveCountry = moiveCountry;
	}
	
	
	
}
