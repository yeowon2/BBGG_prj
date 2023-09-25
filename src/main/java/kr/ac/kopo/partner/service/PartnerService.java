package kr.ac.kopo.partner.service;

import java.util.List;

import kr.ac.kopo.pager.Pager;
import kr.ac.kopo.partner.web.PartnerVO;
import kr.ac.kopo.user.web.UserVO;

public interface PartnerService {

	List<PartnerVO> list(Pager pager);

	void add(PartnerVO partnerVO);

	PartnerVO select(Long partnerNo);

	void update(PartnerVO partnerVO);

	void delete(Long partnerNo);

}
