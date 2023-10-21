package kr.ac.kopo.item.dao;

import java.util.List;
import java.util.Map;

import kr.ac.kopo.file.FileVO;
import kr.ac.kopo.item.web.ItemVO;

public interface ItemDao {

	List<ItemVO> itemList(ItemVO itemVO);

	ItemVO itemSelect(Long itemNo);

	void itemAdd(ItemVO itemVO);

	void leaseAdd(Map<String, Long> paramMap);

	void monthAdd(Map<String, Long> paramMap);

	List<ItemVO> partItemList(Long partnerNo);
	
	List<ItemVO> partOtherItemList(Map<String, Long> paramMap);

	void updateStatus(Long itemNo);

	String selectStatus(Long itemNo);

	void deleteItem(Long itemNo);

	ItemVO itemDetail(Long itemNo);

	String lomSelect(Long itemNo);

	List<FileVO> selectFile(Long itemNo);

	List<ItemVO> selectRecentList();

	int viewCount(Long itemNo);

	FileVO selectItemFile(Long itemNo);

	List<ItemVO> selectPopularList();

	ItemVO itemDetail(Map<String, Long> paramMap);

	List<ItemVO> selectWishList(long userNo);

	void updateItem(ItemVO itemVO);



	

}