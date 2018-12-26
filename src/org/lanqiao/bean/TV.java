package org.lanqiao.bean;

public class TV {

	private String tvId; //电视剧ID 
	private String tvName; //电视剧名称
	private String tvPic; //电视剧海报
	private String loadTime;//上传时间
	private String showTime;//上映时间
	private String tvComment;//内容简介
	private int countryId; //所属国家
	private int typeId;//所属类型
	private int tvPlay;//播放量
	private int tvScore;//评分
	private String typeName;//所属类型名称
	private String countryName;//所属国家名称
	
	public TV() {
	}

	public TV(String tvId, String tvName, String tvPic, String loadTime, String showTime, String tvComment,
			int countryId, int typeId, int tvPlay, int tvScore) {
		this.tvId = tvId;
		this.tvName = tvName;
		this.tvPic = tvPic;
		this.loadTime = loadTime;
		this.showTime = showTime;
		this.tvComment = tvComment;
		this.countryId = countryId;
		this.typeId = typeId;
		this.tvPlay = tvPlay;
		this.tvScore = tvScore;
	}
	

	public TV(String tvId, String tvName, String tvPic, String loadTime, String showTime, String tvComment,
			int countryId, int typeId, int tvPlay, int tvScore, String typeName, String countryName) {
		this.tvId = tvId;
		this.tvName = tvName;
		this.tvPic = tvPic;
		this.loadTime = loadTime;
		this.showTime = showTime;
		this.tvComment = tvComment;
		this.countryId = countryId;
		this.typeId = typeId;
		this.tvPlay = tvPlay;
		this.tvScore = tvScore;
		this.typeName = typeName;
		this.countryName = countryName;
	}

	public String getTvId() {
		return tvId;
	}

	public void setTvId(String tvId) {
		this.tvId = tvId;
	}

	public String getTvName() {
		return tvName;
	}

	public void setTvName(String tvName) {
		this.tvName = tvName;
	}

	public String getTvPic() {
		return tvPic;
	}

	public void setTvPic(String tvPic) {
		this.tvPic = tvPic;
	}

	public String getLoadTime() {
		return loadTime;
	}

	public void setLoadTime(String loadTime) {
		this.loadTime = loadTime;
	}

	public String getShowTime() {
		return showTime;
	}

	public void setShowTime(String showTime) {
		this.showTime = showTime;
	}

	public String getTvComment() {
		return tvComment;
	}

	public void setTvComment(String tvComment) {
		this.tvComment = tvComment;
	}

	public int getCountryId() {
		return countryId;
	}

	public void setCountryId(int countryId) {
		this.countryId = countryId;
	}

	public int getTypeId() {
		return typeId;
	}

	public void setTypeId(int typeId) {
		this.typeId = typeId;
	}

	public int getTvPlay() {
		return tvPlay;
	}

	public void setTvPlay(int tvPlay) {
		this.tvPlay = tvPlay;
	}

	public int getTvScore() {
		return tvScore;
	}

	public void setTvScore(int tvScore) {
		this.tvScore = tvScore;
	}

	public String getTypeName() {
		return typeName;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}

	public String getCountryName() {
		return countryName;
	}

	public void setCountryName(String countryName) {
		this.countryName = countryName;
	}
	
	
}
