package kr.ac.kopo.list.web;

public class ViewListVO {

	private Long wishNo;	// pk값인 관심목록 고유번호
	private Long roomNo;	// 매물 고유번호
	private Long userNo;	// 회원 고유번호
	private String useAt;	// 상태코드
	
	private int roomId;

	public Long getWishNo() {
		return wishNo;
	}

	public void setWishNo(Long wishNo) {
		this.wishNo = wishNo;
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

	public String getUseAt() {
		return useAt;
	}

	public void setUseAt(String useAt) {
		this.useAt = useAt;
	}

	public int getRoomId() {
		return roomId;
	}

	public void setRoomId(int roomId) {
		this.roomId = roomId;
	} 
	
	
}