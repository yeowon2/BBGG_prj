package kr.ac.kopo.report.web;

public class ReportVO {
	private long reportNo;
	private long roomNo;
	private long userNo;
	private String reportCheck1;
	private String reportCheck2;
	private String reportCheck3;
	private String reportContent;
	private String userAt;
	private String agreeAt;
	
	public long getReportNo() {
		return reportNo;
	}
	public void setReportNo(long reportNo) {
		this.reportNo = reportNo;
	}
	public long getRoomNo() {
		return roomNo;
	}
	public void setRoomNo(long roomNo) {
		this.roomNo = roomNo;
	}
	public long getUserNo() {
		return userNo;
	}
	public void setUserNo(long userNo) {
		this.userNo = userNo;
	}
	public String getReportCheck1() {
		return reportCheck1;
	}
	public void setReportCheck1(String reportCheck1) {
		this.reportCheck1 = reportCheck1;
	}
	public String getReportCheck2() {
		return reportCheck2;
	}
	public void setReportCheck2(String reportCheck2) {
		this.reportCheck2 = reportCheck2;
	}
	public String getReportCheck3() {
		return reportCheck3;
	}
	public void setReportCheck3(String reportCheck3) {
		this.reportCheck3 = reportCheck3;
	}
	public String getReportContent() {
		return reportContent;
	}
	public void setReportContent(String reportContent) {
		this.reportContent = reportContent;
	}
	public String getUserAt() {
		return userAt;
	}
	public void setUserAt(String userAt) {
		this.userAt = userAt;
	}
	public String getAgreeAt() {
		return agreeAt;
	}
	public void setAgreeAt(String agreeAt) {
		this.agreeAt = agreeAt;
	}
}