package kr.ac.kopo.room.web;

import java.util.Date;

public class RoomVO {
		
	private Long roomNo;			//매물고유번호
	private Long agencyNo;			//agency고유번호
	private String leaseNo;		//전세고유번호
	private String monthNo;		//월세고유번호
	private String roomType;		//매물 타입
	private String address;			//매물 주소
	private String dong;			//동
	private String ho;				//호
	private String moveInAt;		//입주가능여부
	private String moveInDate;	//입주가능날짜
	private String roomSize;		//전용면적
	private String buildingFloor;	//건물 전체 층수
	private String roomFloor;		//해당 매물 층수
	private String roomCount;		//방 수
	private String bathAt;			//욕실 수
	private String elevatorAt;		//엘리베이터 유무
	private String parkingAt;		//주차 가능 여부
	private String manageFeeAt;	//공용 관리비 여부
	private String manageFee;		//공용 관리비
	private String memoShort;		//매물 소개
	private String memoDetail;		//매물 설명
	private Date registDate;		//매물 등록일
	private Date updateDate;		//매물 수정일
	private String useAt;			//상태코드
	private String lat;				//x값
	private String lng;				//y값
	
	public Long getRoomNo() {
		return roomNo;
	}
	public void setRoomNo(Long roomNo) {
		this.roomNo = roomNo;
	}
	public Long getAgencyNo() {
		return agencyNo;
	}
	public void setAgencyNo(Long agencyNo) {
		this.agencyNo = agencyNo;
	}
	public String getLeaseNo() {
		return leaseNo;
	}
	public void setLeaseNo(String leaseNo) {
		this.leaseNo = leaseNo;
	}
	public String getMonthNo() {
		return monthNo;
	}
	public void setMonthNo(String monthNo) {
		this.monthNo = monthNo;
	}
	public String getRoomType() {
		return roomType;
	}
	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getDong() {
		return dong;
	}
	public void setDong(String dong) {
		this.dong = dong;
	}
	public String getHo() {
		return ho;
	}
	public void setHo(String ho) {
		this.ho = ho;
	}
	public String getMoveInAt() {
		return moveInAt;
	}
	public void setMoveInAt(String moveInAt) {
		this.moveInAt = moveInAt;
	}
	public String getMoveInDate() {
		return moveInDate;
	}
	public void setMoveInDate(String moveInDate) {
		this.moveInDate = moveInDate;
	}
	public String getRoomSize() {
		return roomSize;
	}
	public void setRoomSize(String roomSize) {
		this.roomSize = roomSize;
	}
	public String getBuildingFloor() {
		return buildingFloor;
	}
	public void setBuildingFloor(String buildingFloor) {
		this.buildingFloor = buildingFloor;
	}
	public String getRoomFloor() {
		return roomFloor;
	}
	public void setRoomFloor(String roomFloor) {
		this.roomFloor = roomFloor;
	}
	public String getRoomCount() {
		return roomCount;
	}
	public void setRoomCount(String roomCount) {
		this.roomCount = roomCount;
	}
	public String getBathAt() {
		return bathAt;
	}
	public void setBathAt(String bathAt) {
		this.bathAt = bathAt;
	}
	public String getElevatorAt() {
		return elevatorAt;
	}
	public void setElevatorAt(String elevatorAt) {
		this.elevatorAt = elevatorAt;
	}
	public String getParkingAt() {
		return parkingAt;
	}
	public void setParkingAt(String parkingAt) {
		this.parkingAt = parkingAt;
	}
	public String getManageFeeAt() {
		return manageFeeAt;
	}
	public void setManageFeeAt(String manageFeeAt) {
		this.manageFeeAt = manageFeeAt;
	}
	public String getManageFee() {
		return manageFee;
	}
	public void setManageFee(String manageFee) {
		this.manageFee = manageFee;
	}
	public String getMemoShort() {
		return memoShort;
	}
	public void setMemoShort(String memoShort) {
		this.memoShort = memoShort;
	}
	public String getMemoDetail() {
		return memoDetail;
	}
	public void setMemoDetail(String memoDetail) {
		this.memoDetail = memoDetail;
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
	public String getLat() {
		return lat;
	}
	public void setLat(String lat) {
		this.lat = lat;
	}
	public String getLng() {
		return lng;
	}
	public void setLng(String lng) {
		this.lng = lng;
	}
	
}
