package kr.ac.kopo.item.service;

import java.util.List;
import java.util.Map;

import kr.ac.kopo.file.FileVO;
import kr.ac.kopo.item.web.ItemVO;

public interface ItemService {

	List<ItemVO> itemList(ItemVO itemVO);

	ItemVO itemSelect(ItemVO itemVO);

	void itemAdd(ItemVO itemVO, List<FileVO> fileVOList);

	List<ItemVO> partItemList(Long partnerNo);
	
	List<ItemVO> partOtherItemList(Long partnerNo, Long itemNo);

	void updateStatus(Long itemNo);

	String selectStatus(Long itemNo);

	void deleteItem(Long itemNo);

	ItemVO itemDetail(Long itemNo);

	String lomSelect(Long itemNo);

	List<ItemVO> selectRecentList();

	List<ItemVO> selectPopularList();

	
	

}