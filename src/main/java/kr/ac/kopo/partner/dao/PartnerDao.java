package kr.ac.kopo.partner.dao;

import java.util.List;
import java.util.Map;

import kr.ac.kopo.pager.Pager;
import kr.ac.kopo.partner.web.PartnerVO;
import kr.ac.kopo.partner.web.RespVO;

public interface PartnerDao {

	List<PartnerVO> list(Pager pager);

	Long add(PartnerVO parterVO);

	PartnerVO select(Long parterNO);

	void update(PartnerVO parterVO);

	void delete(Long parterNO);

	int total(Pager pager);

	PartnerVO detail(Long partnerNo);

	List<RespVO> getRespWaitCount(Long partnerNo);

	List<RespVO> getRespCompCount(Long partnerNo);

}
