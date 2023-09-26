package kr.ac.kopo.item.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.ac.kopo.item.dao.ItemDao;
import kr.ac.kopo.item.web.ItemVO;

@Service
public class ItemServiceImpl implements ItmeService {
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
		dao.itemAdd(itemVO);
		
		HashMap<String, Long> map = new HashMap<String, Long>();
		map.put("itemNo", itemVO.getitemNo());
		
		if(itemVO.getLeaseOrMonth().equals("lease")) {
			map.put("leasePrice", itemVO.getLeasePrice());
			dao.leaseAdd(map);
		}
		else {
			map.put("deposltFee", itemVO.getDeposltFee());
			map.put("monthPrice", itemVO.getMonthPrice());
			dao.monthAdd(map);
		}
	}
}
