package kr.ac.kopo.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.admin.dao.AdminDao;
import kr.ac.kopo.fake.web.FakeVO;
import kr.ac.kopo.item.dao.ItemDao;
import kr.ac.kopo.item.web.ItemVO;
import kr.ac.kopo.pager.Pager;
import kr.ac.kopo.partner.dao.PartnerDao;
import kr.ac.kopo.partner.web.PartnerVO;
import kr.ac.kopo.user.dao.UserDao;
import kr.ac.kopo.user.web.UserVO;

@Service
public class AdminServiceImpl implements AdminService {

	/*
	 * @Autowired UserDao uDao; PartnerDao pDao; ItemDao iDao;
	 */
	
	@Autowired
	AdminDao adminDao;
	
	
	@Override
	public List<UserVO> userList(UserVO userVO) {
		return adminDao.userList(userVO);
	}
	
	@Override
	public List<PartnerVO> partnerList(PartnerVO partnerVO) {
		return adminDao.partnerList(partnerVO);
	}

	
	@Override
	public List<ItemVO> itemList(ItemVO itemVO) {
		return adminDao.itemList(itemVO);
	}

	@Override
	public List<FakeVO> fakeList(FakeVO fakeVO) {
		return adminDao.fakeList(fakeVO);
	}
}