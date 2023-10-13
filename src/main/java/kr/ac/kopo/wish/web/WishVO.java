package kr.ac.kopo.wish.web;

import java.util.Date;

public class WishVO {

	private Long wishNo;
	private Long itemNo;
	private Long userNo;
	private String useAt;
	private Date registDate;

	public Long getWishNo() {
		return wishNo;
	}
	public void setWishNo(Long wishNo) {
		this.wishNo = wishNo;
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
	public String getUseAt() {
		return useAt;
	}
	public void setUseAt(String useAt) {
		this.useAt = useAt;
	}
	public Date getRegistDate() {
		return registDate;
	}
	public void setRegistDate(Date registDate) {
		this.registDate = registDate;
	}
}
