package kr.ac.kopo.note.web;

import java.util.Date;

import kr.ac.kopo.pager.Pager;

public class NoteVO extends Pager{

	private Long noteNo;
	private Long itemNo;
	private Long userNo;
	private Long partnerNo;
	private String noteSubject;
	private String noteText1;
	private String noteText2;
	private String noteText3;
	private String noteContent;
	private Date registDate;
	private Date updateDate;
	private String useAt;
	
	private String userName;
	private String compName;
	public Long getNoteNo() {
		return noteNo;
	}
	public void setNoteNo(Long noteNo) {
		this.noteNo = noteNo;
	}
	public Long getItemNo() {
		return itemNo;
	}
	public void setItemNo(Long itemNo) {
		this.itemNo = itemNo;
	}
	public Long getUserNo() {
		return userNo;
	}
	public void setUserNo(Long userNo) {
		this.userNo = userNo;
	}
	public Long getPartnerNo() {
		return partnerNo;
	}
	public void setPartnerNo(Long partnerNo) {
		this.partnerNo = partnerNo;
	}
	public String getNoteSubject() {
		return noteSubject;
	}
	public void setNoteSubject(String noteSubject) {
		this.noteSubject = noteSubject;
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
	public Date getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}
	public String getUseAt() {
		return useAt;
	}
	public void setUseAt(String useAt) {
		this.useAt = useAt;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getCompName() {
		return compName;
	}
	public void setCompName(String compName) {
		this.compName = compName;
	}
	
	
	
}
