package kr.ac.kopo.list.web;

import kr.ac.kopo.item.web.ItemVO;

public class UserWishListVO extends ItemVO{
	
	private Long wishNo;	// pk값인 관심목록 고유번호
	private String useAt;	// 상태코드
	
	private Long userNo;	// 회원 고유번호 -> session에서 UserNo를 받아옴 
	
	public Long getWishNo() {
		return wishNo;
	}
	public void setWishNo(Long wishNo) {
		this.wishNo = wishNo;
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
}
