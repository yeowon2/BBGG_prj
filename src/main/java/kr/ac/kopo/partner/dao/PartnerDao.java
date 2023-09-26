package kr.ac.kopo.partner.dao;

import java.util.List;

import kr.ac.kopo.pager.Pager;
import kr.ac.kopo.partner.web.PartnerVO;

public interface PartnerDao {

	List<PartnerVO> list(Pager pager);

	void add(PartnerVO partVO);

	PartnerVO select(Long partNo);

	void update(PartnerVO partVO);

	void delete(Long partNo);

	int total(Pager pager);

	PartnerVO detail(Long partnerNo);

}
