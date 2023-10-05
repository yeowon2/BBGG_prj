package kr.ac.kopo.fake.web;

public class FakeVO {
	private long fakeNo;
	private long itemNo;
	private long userNo;
	private String fakeCheck1;
	private String fakeCheck2;
	private String fakeCheck3;
	private String fakeContent;
	private String useAt;
	private String agreeAt;
	
	private String compName; // 부동산 이름
	
	
	public long getFakeNo() {
		return fakeNo;
	}
	public void setFakeNo(long fakeNo) {
		this.fakeNo = fakeNo;
	}
	public long getItemNo() {
		return itemNo;
	}
	public void setItemNo(long itemNo) {
		this.itemNo = itemNo;
	}
	public long getUserNo() {
		return userNo;
	}
	public void setUserNo(long userNo) {
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
	public String getCompName() {
		return compName;
	}
	public void setCompName(String compName) {
		this.compName = compName;
	}
	
}