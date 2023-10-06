package kr.ac.kopo.admin.dao;

import java.util.List;

import kr.ac.kopo.item.web.ItemVO;
import kr.ac.kopo.pager.Pager;
import kr.ac.kopo.partner.web.PartnerVO;
import kr.ac.kopo.user.web.UserVO;

public interface AdminDao {

	List<UserVO> userList(UserVO userVO);
	List<PartnerVO> partnerList(PartnerVO partnerVO);
	List<ItemVO> itemList(ItemVO itemVO);
}
