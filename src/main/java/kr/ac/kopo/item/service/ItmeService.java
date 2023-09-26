package kr.ac.kopo.item.service;

import java.util.List;

import kr.ac.kopo.item.web.ItemVO;

public interface ItmeService {

	List<ItemVO> itemList();

	ItemVO itemSelect(ItemVO itemVO);

	void itemAdd(ItemVO itemVO);

	List<ItemVO> partItemList(Long partnerNo);
	

}
