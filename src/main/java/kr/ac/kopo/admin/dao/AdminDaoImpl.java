package kr.ac.kopo.admin.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.item.web.ItemVO;
import kr.ac.kopo.pager.Pager;
import kr.ac.kopo.partner.web.PartnerVO;
import kr.ac.kopo.user.web.UserVO;

@Repository
public class AdminDaoImpl implements AdminDao {
	
	@Autowired
	SqlSession sql;

	@Override
	public List<UserVO> userList(UserVO userVO) {
		return sql.selectUserList("user.list", userVO);
	}

	@Override
	public List<PartnerVO> partnerList(PartnerVO partnerVO) {
		return sql.selectPartnerList("partner.list", partnerVO);
	}
	
	@Override
	public List<ItemVO> itemList(ItemVO itemVO) {
		return sql.selectItemList("item.itemList", itemVO);
	}

}