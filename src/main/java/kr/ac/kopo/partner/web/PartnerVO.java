package kr.ac.kopo.partner.web;

import java.util.Date;

import kr.ac.kopo.pager.Pager;

public class PartnerVO extends Pager{

	private long partnerNo;
	private String partnerId;
	private String partnerPw;
	private String compName;
	private String partnerName;
	private String partnerType;
	private String compAddress;
	private String phone;
	private String registNum;
	private String compNum;
	private Date registDate;
	private Date updateDate;
	private String useAt;
	private String partnerAuth;
	public long getPartnerNo() {
		return partnerNo;
	}
	public void setPartnerNo(long partnerNo) {
		this.partnerNo = partnerNo;
	}
	public String getPartnerId() {
		return partnerId;
	}
	public void setPartnerId(String partnerId) {
		this.partnerId = partnerId;
	}
	public String getPartnerPw() {
		return partnerPw;
	}
	public void setPartnerPw(String partnerPw) {
		this.partnerPw = partnerPw;
	}
	public String getCompName() {
		return compName;
	}
	public void setCompName(String compName) {
		this.compName = compName;
	}
	public String getPartnerName() {
		return partnerName;
	}
	public void setPartnerName(String partnerName) {
		this.partnerName = partnerName;
	}
	public String getPartnerType() {
		return partnerType;
	}
	public void setPartnerType(String partnerType) {
		this.partnerType = partnerType;
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
	public String getPartnerAuth() {
		return partnerAuth;
	}
	public void setPartnerAuth(String partnerAuth) {
		this.partnerAuth = partnerAuth;
	}
}
