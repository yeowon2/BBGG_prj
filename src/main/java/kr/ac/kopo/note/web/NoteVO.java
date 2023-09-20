package kr.ac.kopo.note.web;

import java.util.Date;

public class NoteVO {

	private Long noteNo;
	private Long roomNo;
	private Long userNo;
	private Long agencyNo;
	private String noteSubject;
	private String noteText1;
	private String noteText2;
	private String noteText3;
	private String noteContent;
	private Date registDate;
	private Date updateDate;
	private String useAt;
	
	public Date getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}
	
	public Long getNoteNo() {
		return noteNo;
	}
	public String getNoteSubject() {
		return noteSubject;
	}
	public void setNoteSubject(String noteSubject) {
		this.noteSubject = noteSubject;
	}
	public void setNoteNo(Long noteNo) {
		this.noteNo = noteNo;
	}
	public Long getRoomNo() {
		return roomNo;
	}
	public void setRoomNo(Long roomNo) {
		this.roomNo = roomNo;
	}
	public Long getUserNo() {
		return userNo;
	}
	public void setUserNo(Long userNo) {
		this.userNo = userNo;
	}
	public Long getAgencyNo() {
		return agencyNo;
	}
	public void setAgencyNo(Long agencyNo) {
		this.agencyNo = agencyNo;
	}
	public String getNoteText1() {
		return noteText1;
	}
	public void setNoteText1(String noteText1) {
		this.noteText1 = noteText1;
	}
	public String getNoteText2() {
		return noteText2;
	}
	public void setNoteText2(String noteText2) {
		this.noteText2 = noteText2;
	}
	public String getNoteText3() {
		return noteText3;
	}
	public void setNoteText3(String noteText3) {
		this.noteText3 = noteText3;
	}
	public String getNoteContent() {
		return noteContent;
	}
	public void setNoteContent(String noteContent) {
		this.noteContent = noteContent;
	}
	public Date getRegistDate() {
		return registDate;
	}
	public void setRegistDate(Date registDate) {
		this.registDate = registDate;
	}
	public String getUseAt() {
		return useAt;
	}
	public void setUseAt(String useAt) {
		this.useAt = useAt;
	}
	
	
}
