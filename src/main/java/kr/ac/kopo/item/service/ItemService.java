package kr.ac.kopo.item.service;

import java.util.List;

import kr.ac.kopo.file.FileVO;
import kr.ac.kopo.item.web.ItemVO;

public interface ItemService {

	List<ItemVO> itemList(ItemVO itemVO);

	ItemVO itemSelect(Long itemNo);

	void itemAdd(ItemVO itemVO, List<FileVO> fileVOList);

	List<ItemVO> partItemList(Long partnerNo);
	
	List<ItemVO> partOtherItemList(Long partnerNo, Long itemNo);

	void updateStatus(Long itemNo);

	String selectStatus(Long itemNo);

	void deleteItem(Long itemNo);

	String lomSelect(Long itemNo);

	List<ItemVO> selectRecentList();

	List<ItemVO> selectPopularList();

	ItemVO itemDetail(Long itemNo);

	ItemVO itemDetail(Long itemNo, Long loginUserNo);

	List<ItemVO> selectWishList(long userNo);

	void updateItem(ItemVO itemVO);


}