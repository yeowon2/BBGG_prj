package kr.ac.kopo.admin.service;

import java.util.List;

import kr.ac.kopo.fake.web.FakeVO;
import kr.ac.kopo.item.web.ItemVO;
import kr.ac.kopo.partner.web.PartnerVO;
import kr.ac.kopo.user.web.UserVO;

public interface AdminService {
	
	List<UserVO> userList(UserVO userVO);
	List<PartnerVO> partnerList(PartnerVO partnerVO);	
	List<ItemVO> itemList(ItemVO itemVO);
	List<FakeVO> fakeList(FakeVO fakeVO);

}