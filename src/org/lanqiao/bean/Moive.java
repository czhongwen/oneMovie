package org.lanqiao.bean;

public class Moive {

	private String moiveId;//电影主键
	private String moivePic;//电影
	private String moiveAddress;//视频地址
	private String moiveName;//电影名称
	private String moiveDescribe;//电影描述
	private String showTime;//上映时间
	private String loadTime;//上传时间
	private int moivePlay;//播放量
	private int moiveScore;//电影评分
	private int countryId;//所属国家
	private int typeId;//所属类型
	private String typeName; //电影类型
	private String countryName; //电影国家
	
	
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

	
	public Moive() {
	}

	public Moive(String moiveId, String moivePic, String moiveAddress, String moiveName, String moiveDescribe,
			String showTime, String loadTime, int moivePlay, int moiveScore, int countryId, int typeId) {
		this.moiveId = moiveId;
		this.moivePic = moivePic;
		this.moiveAddress = moiveAddress;
		this.moiveName = moiveName;
		this.moiveDescribe = moiveDescribe;
		this.showTime = showTime;
		this.loadTime = loadTime;
		this.moivePlay = moivePlay;
		this.moiveScore = moiveScore;
		this.countryId = countryId;
		this.typeId = typeId;
	}
	

	public Moive(String moiveId, String moivePic, String moiveAddress, String moiveName, String moiveDescribe,
			String showTime, String loadTime, int moivePlay, int moiveScore, int countryId, int typeId, String typeName,
			String countryName) {
		this.moiveId = moiveId;
		this.moivePic = moivePic;
		this.moiveAddress = moiveAddress;
		this.moiveName = moiveName;
		this.moiveDescribe = moiveDescribe;
		this.showTime = showTime;
		this.loadTime = loadTime;
		this.moivePlay = moivePlay;
		this.moiveScore = moiveScore;
		this.countryId = countryId;
		this.typeId = typeId;
		this.typeName = typeName;
		this.countryName = countryName;
	}

	public String getMoiveId() {
		return moiveId;
	}

	public void setMoiveId(String moiveId) {
		this.moiveId = moiveId;
	}

	public String getMoivePic() {
		return this.moivePic;
	}

	public void setMoivePic(String moivePic) {
		this.moivePic = moivePic;
	}

	public String getMoiveAddress() {
		return moiveAddress;
	}

	public void setMoiveAddress(String moiveAddress) {
		this.moiveAddress = moiveAddress;
	}

	public String getMoiveName() {
		return moiveName;
	}

	public void setMoiveName(String moiveName) {
		this.moiveName = moiveName;
	}

	public String getMoiveDescribe() {
		return moiveDescribe;
	}

	public void setMoiveDescribe(String moiveDescribe) {
		this.moiveDescribe = moiveDescribe;
	}

	public String getShowTime() {
		return showTime;
	}

	public void setShowTime(String showTime) {
		this.showTime = showTime;
	}

	public String getLoadTime() {
		return loadTime;
	}

	public void setLoadTime(String loadTime) {
		this.loadTime = loadTime;
	}

	public int getMoivePlay() {
		return moivePlay;
	}

	public void setMoivePlay(int moivePlay) {
		this.moivePlay = moivePlay;
	}

	public int getMoiveScore() {
		return moiveScore;
	}

	public void setMoiveScore(int moiveScore) {
		this.moiveScore = moiveScore;
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

	@Override
	public String toString() {
		return "Moive [moiveId=" + moiveId + ", moivePic=" + moivePic + ", moiveAddress=" + moiveAddress
				+ ", moiveName=" + moiveName + ", moiveDescribe=" + moiveDescribe + ", showTime=" + showTime
				+ ", loadTime=" + loadTime + ", moivePlay=" + moivePlay + ", moiveScore=" + moiveScore + ", countryId="
				+ countryId + ", typeId=" + typeId + ", typeName=" + typeName + ", countryName=" + countryName + "]";
	}
	
}
