package kr.ac.kopo.pager;

import java.util.ArrayList;
import java.util.List;

public class Pager {
	private int page = 1;
	private int perPage = 10;
	private float total;
	private int perGroup = 3;
	
	private int search;
	private String keyword;
	
	public int offset;
	
	public int getOffset() {
		//return (((page - 1) / perGroup) + 0) * perGroup + 0;
		return (page - 1)*perPage;
	}
	
	public String getQuery() {
		String queryString = "";
		
		if(search > 0)
			queryString += "&search=" + search + "&keyword=" + keyword;
		
		return queryString;
	}
	
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getPerPage() {
		return perPage;
	}
	public void setPerPage(int perPage) {
		this.perPage = perPage;
	}
	public float getTotal() {
		return total;
	}
	public void setTotal(float total) {
		this.total = total;
	}
	public int getPerGroup() {
		return perGroup;
	}
	public void setPerGroup(int perGroup) {
		this.perGroup = perGroup;
	}
	public int getLast() {	//마지막 페이지
		
		return (int) Math.ceil(total / perPage);
	}
	// 이전 누르면 이전페이지그룹의 첫번째 페이지
	public int getPrev() {
		return page <= perGroup ? 1 : (((page - 1) / perGroup) - 1) * perGroup + 1;
	}
	// 다음 누르면 다음페이지그룹의 첫번째 페이지
	public int getNext() {
		int next = (((page - 1) / perGroup) + 1) * perGroup + 1;
		int last = getLast();
		
		return next < last ? next : last;
	}
	// 페이지 리스트
	public List<Integer> getList() {
		List<Integer> pageList = new ArrayList<Integer>();
		
		int startPage = (((page - 1) / perGroup) + 0) * perGroup + 1;	//첫페이지 설정
		
		for(int i = startPage; i < (startPage + perGroup) && i <= getLast(); i++) {
			pageList.add(i);
		}
		
		// 페이지(게시물)가 없다면 포문이 작동하지 않기에 1값을 넣어준다
		if(pageList.isEmpty()) {
			pageList.add(1);
		}
		
		return pageList;
	}
	
	public int getSearch() {
		return search;
	}
	public void setSearch(int search) {
		this.search = search;
	}
	public String getKeyword() {
		if(search < 1)
			keyword = "";
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
}
