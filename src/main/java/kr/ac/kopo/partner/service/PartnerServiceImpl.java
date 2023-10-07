package kr.ac.kopo.partner.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.pager.Pager;
import kr.ac.kopo.partner.dao.PartnerDao;
import kr.ac.kopo.partner.web.PartnerVO;
import kr.ac.kopo.partner.web.RespVO;

@Service
public class PartnerServiceImpl implements PartnerService {

	@Autowired
	PartnerDao dao;
	
	@Override
	public List<PartnerVO> list(Pager pager) {
		int total = dao.total(pager);
		
		return dao.list(pager);
	}

	@Override
	public Long add(PartnerVO partnerVO) {
		return dao.add(partnerVO);
	}

	@Override
	public PartnerVO select(Long partnerNo) {
		return dao.select(partnerNo);
	}

	@Override
	public void update(PartnerVO partnerVO) {
		dao.update(partnerVO);
	}

	@Override
	public void delete(Long partnerNo) {
		dao.delete(partnerNo);
	}

	@Override
	public PartnerVO detail(Long partnerNo) {
		return dao.detail(partnerNo);
	}

	@Override
	public Map<String, List> getRespCount(Long partnerNo) {
		Map<String, List> result = new HashMap<String, List>();
		List<RespVO> respWaitCount = dao.getRespWaitCount(partnerNo);
		List<RespVO> respCompCount = dao.getRespCompCount(partnerNo);
		result.put("respWaitCount", respWaitCount);
		result.put("respCompCount", respCompCount);
		return result;
	}
}
