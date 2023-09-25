package kr.ac.kopo.part.web;

import java.util.Date;

public class PartVO {

	private long partNo;
	private String partId;
	private String partPw;
	private String compName;
	private String partName;
	private String partType;
	private String compAddress;
	private String phone;
	private String registNum;
	private String compNum;
	private Date registDate;
	private Date updateDate;
	private String useAt;
	private String PartAuth;
	public long getPartNo() {
		return partNo;
	}
	public void setPartNo(long partNo) {
		this.partNo = partNo;
	}
	public String getPartId() {
		return partId;
	}
	public void setPartId(String partId) {
		this.partId = partId;
	}
	public String getPartPw() {
		return partPw;
	}
	public void setPartPw(String partPw) {
		this.partPw = partPw;
	}
	public String getCompName() {
		return compName;
	}
	public void setCompName(String compName) {
		this.compName = compName;
	}
	public String getPartName() {
		return partName;
	}
	public void setPartName(String partName) {
		this.partName = partName;
	}
	public String getPartType() {
		return partType;
	}
	public void setPartType(String partType) {
		this.partType = partType;
	}
	public String getCompAddress() {
		return compAddress;
	}
	public void setCompAddress(String compAddress) {
		this.compAddress = compAddress;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getRegistNum() {
		return registNum;
	}
	public void setRegistNum(String registNum) {
		this.registNum = registNum;
	}
	public String getCompNum() {
		return compNum;
	}
	public void setCompNum(String compNum) {
		this.compNum = compNum;
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
	public String getPartAuth() {
		return PartAuth;
	}
	public void setPartAuth(String partAuth) {
		PartAuth = partAuth;
	}
}
