package kr.ac.kopo.admin.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import kr.ac.kopo.fake.web.FakeVO;
import kr.ac.kopo.item.web.ItemVO;
import kr.ac.kopo.partner.web.PartnerVO;
import kr.ac.kopo.user.web.UserVO;

@Repository
public class AdminDaoImpl implements AdminDao {
	
	@Autowired
	SqlSession sql;

	
	@Override
	public List<UserVO> userList(UserVO userVO) {
		return sql.selectList("admin.selectUserList", userVO);
	}

	@Override
	public List<PartnerVO> partnerList(PartnerVO partnerVO) {
		return sql.selectList("admin.selectPartnerList", partnerVO);
	}
	
	@Override
	public List<ItemVO> itemList(ItemVO itemVO) {
		return sql.selectList("admin.selectItemList", itemVO);
	}

	@Override
	public List<FakeVO> fakeList(FakeVO fakeVO) {
		return sql.selectList("admin.selectFakeList", fakeVO);
	}
	
	@Override
	public int countUser() {
		return sql.selectOne("admin.countUser");
	}
	
	@Override
	public int countUserYestd() {
		return sql.selectOne("admin.countUserYestd");
	}
	
	@Override
	public int countPartner() {
		return sql.selectOne("admin.countPartner");
	}
	
	@Override
	public int countPartnerYestd() {
		return sql.selectOne("admin.countPartnerYestd");
	}
	
	@Override
	public int countItem() {
		return sql.selectOne("admin.countItem");
	}
	
	@Override
	public int countItemYestd() {
		return sql.selectOne("admin.countItemYestd");
	}
	
	@Override
	public int countFake() {
		return sql.selectOne("admin.countFake");
	}
	
	@Override
	public int countFakeYestd() {
		return sql.selectOne("admin.countFakeYestd");
	}
}