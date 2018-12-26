package org.lanqiao.bean;

public class TvDetail {

	private String tvId;//电视机ID
	private int tvNumber; //电视剧第几级
	private String tvAddress; //视频地址
	
	public TvDetail() {
	}

	public TvDetail(String tvId, int tvNumber, String tvAddress) {
		this.tvId = tvId;
		this.tvNumber = tvNumber;
		this.tvAddress = tvAddress;
	}

	public String getTvId() {
		return tvId;
	}

	public void setTvId(String tvId) {
		this.tvId = tvId;
	}

	public int getTvNumber() {
		return tvNumber;
	}

	public void setTvNumber(int tvNumber) {
		this.tvNumber = tvNumber;
	}

	public String getTvAddress() {
		return tvAddress;
	}

	public void setTvAddress(String tvAddress) {
		this.tvAddress = tvAddress;
	}
	
}
