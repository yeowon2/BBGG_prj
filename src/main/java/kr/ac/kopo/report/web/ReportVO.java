package kr.ac.kopo.report.web;

public class ReportVO {
	private int reportNo;
	private int roomNo;
	private int userNo;
	private String reportCheck1;
	private String reportCheck2;
	private String reportCheck3;
	private String reportContent;
	private String userAt;
	private String agreeAt;
	
	public int getReportNo() {
		return reportNo;
	}
	public void setReportNo(int reportNo) {
		this.reportNo = reportNo;
	}
	public int getRoomNo() {
		return roomNo;
	}
	public void setRoomNo(int roomNo) {
		this.roomNo = roomNo;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
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