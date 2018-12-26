package org.lanqiao.bean;

public class Index {

	private int indexID;
	private String pic;
	private String moiveName;
	private String moiveComment;
	private String moiveAddress;
	
	public Index(int indexID, String pic, String moiveName, String moiveComment, String moiveAddress) {
		super();
		this.indexID = indexID;
		this.pic = pic;
		this.moiveName = moiveName;
		this.moiveComment = moiveComment;
		this.moiveAddress = moiveAddress;
	}
	public Index(String pic, String moiveName, String moiveComment, String moiveAddress) {
		super();
		this.pic = pic;
		this.moiveName = moiveName;
		this.moiveComment = moiveComment;
		this.moiveAddress = moiveAddress;
	}
	public Index() {
		super();
	}
	public int getIndexID() {
		return indexID;
	}
	public void setIndexID(int indexID) {
		this.indexID = indexID;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public String getMoiveName() {
		return moiveName;
	}
	public void setMoiveName(String moiveName) {
		this.moiveName = moiveName;
	}
	public String getMoiveComment() {
		return moiveComment;
	}
	public void setMoiveComment(String moiveComment) {
		this.moiveComment = moiveComment;
	}
	public String getMoiveAddress() {
		return moiveAddress;
	}
	public void setMoiveAddress(String moiveAddress) {
		this.moiveAddress = moiveAddress;
	}
	
	
}
