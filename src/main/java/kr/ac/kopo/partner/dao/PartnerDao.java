package kr.ac.kopo.partner.dao;

import java.util.List;

import kr.ac.kopo.pager.Pager;
import kr.ac.kopo.partner.web.PartnerVO;

public interface PartnerDao {

	List<PartnerVO> list(Pager pager);

	void add(PartnerVO parterVO);

	PartnerVO select(Long parterNO);

	void update(PartnerVO parterVO);

	void delete(Long parterNO);

	int total(Pager pager);

	PartnerVO detail(Long partnerNo);

}
