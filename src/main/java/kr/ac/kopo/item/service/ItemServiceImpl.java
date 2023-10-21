package kr.ac.kopo.item.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.ac.kopo.file.FileDao;
import kr.ac.kopo.file.FileDaoImpl;
import kr.ac.kopo.file.FileVO;
import kr.ac.kopo.item.dao.ItemDao;
import kr.ac.kopo.item.web.ItemVO;

@Service
public class ItemServiceImpl implements ItemService {
	
	private static final Logger logger = LoggerFactory.getLogger(ItemServiceImpl.class);
	
	@Autowired
	ItemDao dao;
	
	@Autowired
	FileDao fileDao;
	
	@Override
	public List<ItemVO> itemList(ItemVO itemVO) {
		List<ItemVO> itemList = dao.itemList(itemVO);
		return itemList;
	}

	@Override
	public ItemVO itemSelect(Long itemNo) {
		//해당 매물의 모든 사진 리스트를 반환
		List<FileVO> fileVOList = dao.selectFile(itemNo);
		
		//아이템 정보 select
		ItemVO itemVO = dao.itemSelect(itemNo);
		
		//itemVO에 조회수와 file리스트를 setting
		itemVO.setFileVOList(fileVOList);
		return itemVO;
	}
	
	@Transactional
	@Override
	public void itemAdd(ItemVO itemVO, List<FileVO> fileVOList) {
		
		 if(itemVO.getMonthPrice() == null && itemVO.getDepositFee() == null) {
			 itemVO.setLeaseOrMonth("lease"); 
			 itemVO.setMonthPrice(0L);
		 } else if(itemVO.getLeasePrice() == null){ 
			 itemVO.setLeaseOrMonth("month"); 
			 itemVO.setLeasePrice(0L);
		 }
		
		dao.itemAdd(itemVO);
		
		for (FileVO fileVO : fileVOList) {
			fileVO.setItemNo(itemVO.getItemNo());
			fileDao.insertFile(fileVO);
		}
	}

	@Override
	public List<ItemVO> partOtherItemList(Long partnerNo, Long itemNo) {
		Map<String, Long> paramMap = new HashMap<String, Long>();
		paramMap.put("itemNo", itemNo);
		paramMap.put("partnerNo", partnerNo);
		 List<ItemVO> partItemList = dao.partOtherItemList(paramMap);
		 
		 return partItemList;
	}
	@Override
	public List<ItemVO> partItemList(Long partnerNo) {
		List<ItemVO> partItemList = dao.partItemList(partnerNo);
		return partItemList;
	}

	@Override
	public void updateStatus(Long itemNo) {
			dao.updateStatus(itemNo);
	}

	@Override
	public String selectStatus(Long itemNo) {
		return dao.selectStatus(itemNo);
	}

	@Override
	public void deleteItem(Long itemNo) {
		dao.deleteItem(itemNo);
	}

	//매물 상세페이지
	@Override
	@Transactional
	public ItemVO itemDetail(Long itemNo) {
		//해당 매물의 모든 사진 리스트를 반환
		List<FileVO> fileVOList = dao.selectFile(itemNo);
		
		//아이템 정보 select
		ItemVO itemVO = dao.itemDetail(itemNo);
		
		//조회수 update
		int viewCount = dao.viewCount(itemNo);
		
		//itemVO에 조회수와 file리스트를 setting
		itemVO.setViewCount(viewCount);
		itemVO.setFileVOList(fileVOList);
		
		return itemVO;
	}
	
	@Override
	public ItemVO itemDetail(Long itemNo, Long loginUserNo) {
		
		//해당 매물의 모든 사진 리스트를 반환
		List<FileVO> fileVOList = dao.selectFile(itemNo);
		
		Map<String, Long> paramMap = new HashMap<String, Long>();
		paramMap.put("itemNo", itemNo);
		paramMap.put("userNo", loginUserNo);
		ItemVO itemVO = dao.itemDetail(paramMap);
		 
		//조회수 update
		int viewCount = dao.viewCount(itemNo);
		
		//itemVO에 조회수와 file리스트를 setting
		itemVO.setViewCount(viewCount);
		itemVO.setFileVOList(fileVOList);
		 
		 
		 return itemVO;
	}

	@Override
	public String lomSelect(Long itemNo) {
		return dao.lomSelect(itemNo);
	}

	@Override
	public List<ItemVO> selectRecentList() {
		return dao.selectRecentList();
	}

	@Override
	public List<ItemVO> selectPopularList() {
		
		return dao.selectPopularList();
		
	}

	@Override
	public List<ItemVO> selectWishList(long userNo) {
		
		 List<ItemVO> selectWishList = dao.selectWishList(userNo);
		 
		 
		 return selectWishList;
	}

	@Override
	@Transactional
	public void updateItem(ItemVO itemVO) {
		
		 if(itemVO.getMonthPrice() == null && itemVO.getDepositFee() == null) {
			 itemVO.setLeaseOrMonth("lease"); 
		 } else if(itemVO.getLeasePrice() == null){ 
			 itemVO.setLeaseOrMonth("month"); 
		 }
		 
		dao.updateItem(itemVO);
		Long itemNo = itemVO.getItemNo();
		List<FileVO> fileVOList = itemVO.getFileVOList();
		
		for (FileVO fileVO : fileVOList) {
			fileVO.setItemNo(itemNo);
			fileDao.insertFile(fileVO);
		}
		
	}


	
}