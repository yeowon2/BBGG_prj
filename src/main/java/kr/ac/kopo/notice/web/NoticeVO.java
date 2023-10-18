package kr.ac.kopo.notice.web;

import java.util.Date;

public class NoticeVO {
	private Long noticeNo;
	private String noticeTitle;
	private String noticeContent;
	private Date registDate;
	private Date updateDate;
	private String adminId;
	private Integer noticeViewCount;
	
	public Long getNoticeNo() {
		return noticeNo;
	}
	public void setNoticeNo(Long noticeNo) {
		this.noticeNo = noticeNo;
	}
	public String getNoticeTitle() {
		return noticeTitle;
	}
	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}
	public String getNoticeContent() {
		return noticeContent;
	}
	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}
	public Date getRegistDate() {
		return registDate;
	}
	public void setRegistDate(Date registDate) {
		this.registDate = registDate;
	}
	public Date getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}
	public String getAdminId() {
		return adminId;
	}
	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}
	public Integer getNoticeViewCount() {
		return noticeViewCount;
	}
	public void setNoticeViewCount(Integer noticeViewCount) {
		this.noticeViewCount = noticeViewCount;
	}
	
	
}
