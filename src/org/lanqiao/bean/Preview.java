package org.lanqiao.bean;

public class Preview {

	private String previewId;//预告片ID
	private String comment;//内容简介
	private String pic;//海报
	private String previewName;//名称
	private String showTime;//上映时间
	private String loadTime;//上传时间
	
	public Preview() {
	}

	public Preview(String previewId, String comment, String pic, String previewName, String showTime, String loadTime) {
		this.previewId = previewId;
		this.comment = comment;
		this.pic = pic;
		this.previewName = previewName;
		this.showTime = showTime;
		this.loadTime = loadTime;
	}

	public String getPreviewId() {
		return previewId;
	}

	public void setPreviewId(String previewId) {
		this.previewId = previewId;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public String getPic() {
		return pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
	}

	public String getPreviewName() {
		return previewName;
	}

	public void setPreviewName(String previewName) {
		this.previewName = previewName;
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
	
 }
