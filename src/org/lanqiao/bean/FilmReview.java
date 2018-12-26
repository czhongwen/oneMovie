package org.lanqiao.bean;

public class FilmReview {
	
	private String moiveId;			//影评id
	private int userId;			    //用户id
	private String commentInfo;		//影评信息
	private String commentDate;		//影评时间
	private int checkReview;		//影评审核
	private int fileReviewId;   	//评论ID
	private String userName;       //用户名
	private String moiveName;	     //电影名
	private String pic;   			//影视海报
	public String getPic() {
		return pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
	}

	public FilmReview() {
	}

	public FilmReview(String moiveId, int userId, String commentInfo, String commentDate, int checkReview,
			int fileReviewId) {
		this.moiveId = moiveId;
		this.userId = userId;
		this.commentInfo = commentInfo;
		this.commentDate = commentDate;
		this.checkReview = checkReview;
		this.fileReviewId = fileReviewId;
	}



	public FilmReview(String moiveId, int userId, String commentInfo, String commentDate, int checkReview,
			int fileReviewId, String userName, String moiveName, String pic) {
		this.moiveId = moiveId;
		this.userId = userId;
		this.commentInfo = commentInfo;
		this.commentDate = commentDate;
		this.checkReview = checkReview;
		this.fileReviewId = fileReviewId;
		this.userName = userName;
		this.moiveName = moiveName;
		this.pic = pic;
	}

	public String getMoiveId() {
		return moiveId;
	}

	public void setMoiveId(String moiveId) {
		this.moiveId = moiveId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getCommentInfo() {
		return commentInfo;
	}

	public void setCommentInfo(String commentInfo) {
		this.commentInfo = commentInfo;
	}

	public String getCommentDate() {
		return commentDate;
	}

	public void setCommentDate(String commentDate) {
		this.commentDate = commentDate;
	}

	public int getCheckReview() {
		return checkReview;
	}

	public void setCheckReview(int checkReview) {
		this.checkReview = checkReview;
	}

	public int getFileReviewId() {
		return fileReviewId;
	}

	public void setFileReviewId(int fileReviewId) {
		this.fileReviewId = fileReviewId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getMoiveName() {
		return moiveName;
	}

	public void setMoiveName(String moiveName) {
		this.moiveName = moiveName;
	}
	
	
}
