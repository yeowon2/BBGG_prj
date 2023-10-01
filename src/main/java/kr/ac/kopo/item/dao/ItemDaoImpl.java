package kr.ac.kopo.item.dao;


import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.item.web.ItemVO;

@Repository
public class ItemDaoImpl implements ItemDao {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(ItemDaoImpl.class);
	
	@Autowired
	SqlSession sql;

	@Override
	public List<ItemVO> itemList() {
		return sql.selectList("item.itemList");
	}

	@Override
	public ItemVO itemSelect(ItemVO itemVO) {
		ItemVO vo =  sql.selectOne("item.itemSelect", itemVO);
		LOGGER.info("LotM: {}", vo.getLeaseOrMonth());
		return vo;
	}
	
	@Override
	public void itemAdd(ItemVO itemVO) {
		// 첫 번째 INSERT 문 실행
        sql.insert("item.addItem", itemVO);
    }

	@Override
	public void leaseAdd(HashMap<String, Long> map) {
		sql.insert("item.leaseAdd", map);
	}

	@Override
	public void monthAdd(HashMap<String, Long> map) {
		sql.insert("item.monthAdd", map);
	}

	@Override
	public List<ItemVO> partItemList(Long partnerNo) {
		
		List<ItemVO> list = sql.selectList("item.partItemList", partnerNo);
		for (ItemVO item : list) {
		    if ("lease".equals(item.getLeaseOrMonth())) {
		        item.setPrice(item.getLeasePrice());
		    } else if ("month".equals(item.getLeaseOrMonth())) {
		        item.setPrice(item.getMonthPrice());
		    }
		}
		return list;
	}

	@Override
	public void updateStatus(Long itemNo) {
		sql.update("updateStatus", itemNo);
	}

	@Override
	public String selectStatus(Long itemNo) {
		return sql.selectOne("selectStatus", itemNo);
	}

	@Override
	public void deleteItem(Long itemNo) {
		sql.update("deleteItem", itemNo);
	}

	@Override
	public ItemVO itemDetail(Long itemNo) {
		return sql.selectOne("itemDetail", itemNo);
	}
}
