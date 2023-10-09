package kr.ac.kopo.item.web;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import kr.ac.kopo.file.FileVO;

public class ItemVO {
		
	private Long itemNo;			//매물고유번호
	private Long partnerNo;			//partner고유번호
	private String leaseOrMonth;	//전세 / 월세
	private String itemType;		//매물 타입
	private String address;			//매물 주소
	private String address2;		//상세 주소
	private String dong;			//동
	private String ho;				//호
	private String moveInAt;		//입주가능여부
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date moveInDate;		//입주가능날짜
	
	private Long itemSize;			//전용면적
	private Long buildingFloor;		//건물 전체 층수
	private Long itemFloor;			//해당 매물 층수
	private Long itemCount;			//방 수
	private Long bathAt;			//욕실 수
	private String elevatorAt;		//엘리베이터 유무
	private String parkingAt;		//주차 가능 여부
	private String manageFeeAt;		//공용 관리비 여부
	private Long manageFee;			//공용 관리비
	private String memoShort;		//매물 소개
	private String memoDetail;		//매물 설명
	private Date registDate;		//매물 등록일
	private Date updateDate;		//매물 수정일
	private String useAt;			//상태코드
	private Double lat;				//x값
	private Double lng;				//y값
	
	private Long leasePrice;		//전세가격
	
	private Long depositFee;		//월세보증금
	private Long monthPrice;		//월세가격
	
	private Long price;
	
	private String search;			//검색
	
	private Long fileNo;			//첨부파일 고유번호
	private String saved_name;		//첨부파일 고유번호
	private String original_name;	//첨부파일 고유번호
	private String file_path;		//첨부파일 고유번호
	private String file_ext;		//첨부파일 고유번호
	private Date regist_date;		//첨부파일 고유번호
	private Long file_size;			//첨부파일 고유번호
	
	private List<FileVO> fileVOList;
	
	private FileVO fileVO;

	public Long getItemNo() {
		return itemNo;
	}

	public void setItemNo(Long itemNo) {
		this.itemNo = itemNo;
	}

	public Long getPartnerNo() {
		return partnerNo;
	}

	public void setPartnerNo(Long partnerNo) {
		this.partnerNo = partnerNo;
	}

	public String getLeaseOrMonth() {
		return leaseOrMonth;
	}

	public void setLeaseOrMonth(String leaseOrMonth) {
		this.leaseOrMonth = leaseOrMonth;
	}

	public String getItemType() {
		return itemType;
	}

	public void setItemType(String itemType) {
		this.itemType = itemType;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
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

	public Date getMoveInDate() {
		return moveInDate;
	}

	public void setMoveInDate(Date moveInDate) {
		this.moveInDate = moveInDate;
	}

	public Long getItemSize() {
		return itemSize;
	}

	public void setItemSize(Long itemSize) {
		this.itemSize = itemSize;
	}

	public Long getBuildingFloor() {
		return buildingFloor;
	}

	public void setBuildingFloor(Long buildingFloor) {
		this.buildingFloor = buildingFloor;
	}

	public Long getItemFloor() {
		return itemFloor;
	}

	public void setItemFloor(Long itemFloor) {
		this.itemFloor = itemFloor;
	}

	public Long getItemCount() {
		return itemCount;
	}

	public void setItemCount(Long itemCount) {
		this.itemCount = itemCount;
	}

	public Long getBathAt() {
		return bathAt;
	}

	public void setBathAt(Long bathAt) {
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

	public Long getManageFee() {
		return manageFee;
	}

	public void setManageFee(Long manageFee) {
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

	public Double getLat() {
		return lat;
	}

	public void setLat(Double lat) {
		this.lat = lat;
	}

	public Double getLng() {
		return lng;
	}

	public void setLng(Double lng) {
		this.lng = lng;
	}

	public Long getLeasePrice() {
		return leasePrice;
	}

	public void setLeasePrice(Long leasePrice) {
		this.leasePrice = leasePrice;
	}

	public Long getDepositFee() {
		return depositFee;
	}

	public void setDepositFee(Long depositFee) {
		this.depositFee = depositFee;
	}

	public Long getMonthPrice() {
		return monthPrice;
	}

	public void setMonthPrice(Long monthPrice) {
		this.monthPrice = monthPrice;
	}

	public Long getPrice() {
		return price;
	}

	public void setPrice(Long price) {
		this.price = price;
	}

	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}

	public Long getFileNo() {
		return fileNo;
	}

	public void setFileNo(Long fileNo) {
		this.fileNo = fileNo;
	}

	public List<FileVO> getFileVOList() {
		return fileVOList;
	}

	public void setFileVOList(List<FileVO> fileVOList) {
		this.fileVOList = fileVOList;
	}

	public String getSaved_name() {
		return saved_name;
	}

	public void setSaved_name(String saved_name) {
		this.saved_name = saved_name;
	}

	public String getOriginal_name() {
		return original_name;
	}

	public void setOriginal_name(String original_name) {
		this.original_name = original_name;
	}

	public String getFile_path() {
		return file_path;
	}

	public void setFile_path(String file_path) {
		this.file_path = file_path;
	}

	public String getFile_ext() {
		return file_ext;
	}

	public void setFile_ext(String file_ext) {
		this.file_ext = file_ext;
	}

	public Date getRegist_date() {
		return regist_date;
	}

	public void setRegist_date(Date regist_date) {
		this.regist_date = regist_date;
	}

	public Long getFile_size() {
		return file_size;
	}

	public void setFile_size(Long file_size) {
		this.file_size = file_size;
	}

	public FileVO getFileVO() {
		return fileVO;
	}

	public void setFileVO(FileVO fileVO) {
		this.fileVO = fileVO;
	}
}