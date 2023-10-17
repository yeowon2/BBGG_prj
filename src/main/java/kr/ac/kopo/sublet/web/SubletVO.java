package kr.ac.kopo.sublet.web;

public class SubletVO {
	
	private Long subletNo;
	private String subletSubject;
	private String subletContent;
	private String useAt;
	private int ViewCount;
	private Long registUserNo;
	private String category;
	
	public Long getSubletNo() {
		return subletNo;
	}
	public void setSubletNo(Long subletNo) {
		this.subletNo = subletNo;
	}
	public String getSubletSubject() {
		return subletSubject;
	}
	public void setSubletSubject(String subletSubject) {
		this.subletSubject = subletSubject;
	}
	
	public String getUseAt() {
		return useAt;
	}
	public void setUseAt(String useAt) {
		this.useAt = useAt;
	}
	public int getViewCount() {
		return ViewCount;
	}
	public void setViewCount(int viewCount) {
		ViewCount = viewCount;
	}
	public Long getRegistUserNo() {
		return registUserNo;
	}
	public void setRegistUserNo(Long registUserNo) {
		this.registUserNo = registUserNo;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getSubletContent() {
		return subletContent;
	}
	public void setSubletContent(String subletContent) {
		this.subletContent = subletContent;
	}

	
}
