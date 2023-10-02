package kr.ac.kopo.item.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.ac.kopo.item.dao.ItemDao;
import kr.ac.kopo.item.web.ItemVO;

@Service
public class ItemServiceImpl implements ItemService {
	@Autowired
	ItemDao dao;
	
	@Override
	public List<ItemVO> itemList() {
		return dao.itemList();
	}

	@Override
	public ItemVO itemSelect(ItemVO itemVO) {
		return dao.itemSelect(itemVO);
	}
	
	@Transactional
	@Override
	public void itemAdd(ItemVO itemVO) {
		
		if(itemVO.getMonthPrice() == null && itemVO.getDepositFee() == null) {
			itemVO.setLeaseOrMonth("lease");
		} else if(itemVO.getLeasePrice() == null) {
			itemVO.setLeaseOrMonth("month");
		}
		dao.itemAdd(itemVO);
		
	}

	@Override
	public List<ItemVO> partItemList(Long partnerNo) {
		return dao.partItemList(partnerNo);
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

	@Override
	public ItemVO itemDetail(Long itemNo) {
		return dao.itemDetail(itemNo);
	}
}
