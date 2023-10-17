package kr.ac.kopo.sublet.web;

public class SubletVO {
	
	private Long subletNo;
	private String subletSubject;
	private String sublet_content;
	private String useAt;
	private int ViewCount;
	private Long registUserNo;
	private String subletCategory;
	
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
	public String getSublet_content() {
		return sublet_content;
	}
	public void setSublet_content(String sublet_content) {
		this.sublet_content = sublet_content;
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
	public String getSubletCategory() {
		return subletCategory;
	}
	public void setSubletCategory(String subletCategory) {
		this.subletCategory = subletCategory;
	}

	
}
