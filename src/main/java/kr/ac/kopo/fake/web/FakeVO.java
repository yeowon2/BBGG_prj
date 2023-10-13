package kr.ac.kopo.fake.web;

import java.util.Date;

import kr.ac.kopo.item.web.ItemVO;

public class FakeVO extends ItemVO{
	private Long fakeNo;
	private Long itemNo;
	private Long userNo;
	private String fakeCheck1;
	private String fakeCheck2;
	private String fakeCheck3;
	private String fakeContent;
	private String useAt;
	private String agreeAt;
	private Date registDate;
	
	private String compName; // 부동산 이름

	public Long getFakeNo() {
		return fakeNo;
	}

	public void setFakeNo(Long fakeNo) {
		this.fakeNo = fakeNo;
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

	public String getFakeCheck1() {
		return fakeCheck1;
	}

	public void setFakeCheck1(String fakeCheck1) {
		this.fakeCheck1 = fakeCheck1;
	}

	public String getFakeCheck2() {
		return fakeCheck2;
	}

	public void setFakeCheck2(String fakeCheck2) {
		this.fakeCheck2 = fakeCheck2;
	}

	public String getFakeCheck3() {
		return fakeCheck3;
	}

	public void setFakeCheck3(String fakeCheck3) {
		this.fakeCheck3 = fakeCheck3;
	}

	public String getFakeContent() {
		return fakeContent;
	}

	public void setFakeContent(String fakeContent) {
		this.fakeContent = fakeContent;
	}

	public String getUseAt() {
		return useAt;
	}

	public void setUseAt(String useAt) {
		this.useAt = useAt;
	}

	public String getAgreeAt() {
		return agreeAt;
	}

	public void setAgreeAt(String agreeAt) {
		this.agreeAt = agreeAt;
	}

	public Date getRegistDate() {
		return registDate;
	}

	public void setRegistDate(Date registDate) {
		this.registDate = registDate;
	}

	public String getCompName() {
		return compName;
	}

	public void setCompName(String compName) {
		this.compName = compName;
	}
}