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
	
	private Long itemSize;			//평수
	private Long itemSizeArea;		//전용면적
	private Long buildingFloor;		//건물 전체 층수
	private Long itemFloor;			//해당 매물 층수
	private Long itemCount;			//방 수
	private Long bathAt;			//욕실 수
	private String elevatorAt;		//엘리베이터 유무
	private String parkingAt;		//주차 가능 여부
	private String manageFeeAt;		//공용 관리비 여부
	private Long manageFee;			//공용 관리비
	private String memoDetail;		//매물 설명
	private String tag1;			//태그1
	private String tag2;			//태그2
	private String tag3;			//태그3
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
	private String savedName;		//첨부파일 저장이름
	private String originalName;	//첨부파일명
	private String filePath;		//첨부파일 패스
	private String fileExt;			//첨부파일 저장일자
	private Date FregistDate;		//첨부파일 수정일자
	private Long fileSize;			//첨부파일 사이즈
	
	private List<FileVO> fileVOList;
	
	private FileVO fileVO;
	
	private int viewCount;  		//조회수
	private int wishCount;  		//관심목록에 담긴 횟수
	
	private Long wishItemNo;
	private Long wishUserNo;
	
	/* 전세 단위 바꾸기 */
	public int getLeaseBillion() {
		if (leasePrice != null) {
			return leasePrice.intValue() / 10000;
		} else {
			return 0; // 또는 다른 기본값
		}
	}
	public int getLeaseTenMillion() {
		if (leasePrice != null) {
			return leasePrice.intValue() % 10000;
		} else {
			return 0; // 또는 다른 기본값
		}
	}
	/* 보증금 단위 바꾸기 */
	public int getDepositFeeBillion() {
		if (depositFee != null) {
	        return depositFee.intValue() / 10000;
	    } else {
	        return 0; // 또는 다른 기본값
	    }
	}
	public int getDepositFeeTenMillion() {
		if (depositFee != null) {
	        return depositFee.intValue() % 10000;
	    } else {
	        return 0; // 또는 다른 기본값
	    }
	}
	
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
	public Long getItemSizeArea() {
		return itemSizeArea;
	}
	public void setItemSizeArea(Long itemSizeArea) {
		this.itemSizeArea = itemSizeArea;
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
	public String getMemoDetail() {
		return memoDetail;
	}
	public void setMemoDetail(String memoDetail) {
		this.memoDetail = memoDetail;
	}
	public String getTag1() {
		return tag1;
	}
	public void setTag1(String tag1) {
		this.tag1 = tag1;
	}
	public String getTag2() {
		return tag2;
	}
	public void setTag2(String tag2) {
		this.tag2 = tag2;
	}
	public String getTag3() {
		return tag3;
	}
	public void setTag3(String tag3) {
		this.tag3 = tag3;
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
	public String getSavedName() {
		return savedName;
	}
	public void setSavedName(String savedName) {
		this.savedName = savedName;
	}
	public String getOriginalName() {
		return originalName;
	}
	public void setOriginalName(String originalName) {
		this.originalName = originalName;
	}
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	public String getFileExt() {
		return fileExt;
	}
	public void setFileExt(String fileExt) {
		this.fileExt = fileExt;
	}
	public Date getFregistDate() {
		return FregistDate;
	}
	public void setFregistDate(Date fregistDate) {
		FregistDate = fregistDate;
	}
	public Long getFileSize() {
		return fileSize;
	}
	public void setFileSize(Long fileSize) {
		this.fileSize = fileSize;
	}
	public List<FileVO> getFileVOList() {
		return fileVOList;
	}
	public void setFileVOList(List<FileVO> fileVOList) {
		this.fileVOList = fileVOList;
	}
	public FileVO getFileVO() {
		return fileVO;
	}
	public void setFileVO(FileVO fileVO) {
		this.fileVO = fileVO;
	}
	public int getViewCount() {
		return viewCount;
	}
	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}
	public int getWishCount() {
		return wishCount;
	}
	public void setWishCount(int wishCount) {
		this.wishCount = wishCount;
	}
	public Long getWishItemNo() {
		return wishItemNo;
	}
	public void setWishItemNo(Long wishItemNo) {
		this.wishItemNo = wishItemNo;
	}
	public Long getWishUserNo() {
		return wishUserNo;
	}
	public void setWishUserNo(Long wishUserNo) {
		this.wishUserNo = wishUserNo;
	}
}