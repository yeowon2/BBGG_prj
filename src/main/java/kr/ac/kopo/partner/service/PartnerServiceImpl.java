package kr.ac.kopo.partner.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.ac.kopo.file.FileDao;
import kr.ac.kopo.file.FileDaoImpl;
import kr.ac.kopo.file.FileVO;
import kr.ac.kopo.item.web.ItemVO;
import kr.ac.kopo.pager.Pager;
import kr.ac.kopo.partner.dao.PartnerDao;
import kr.ac.kopo.partner.web.PartnerVO;
import kr.ac.kopo.partner.web.RespVO;

@Service
public class PartnerServiceImpl implements PartnerService {

	private static final Logger logger = LoggerFactory.getLogger(PartnerServiceImpl.class);

	@Autowired
	PartnerDao dao;

	@Autowired
	FileDao fileDao;

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
		FileVO fileVO = dao.selectFile(partnerNo);
		PartnerVO partnerVO = dao.select(partnerNo);
		partnerVO.setFileVO(fileVO);
		return partnerVO;
	}

	@Override
	@Transactional
	public void update(PartnerVO partnerVO, FileVO fileVO) {
		if (fileVO == null) {
			dao.update(partnerVO);
			
		} else if(fileVO != null) {
			
			dao.update(partnerVO);
			long partnerNo = partnerVO.getPartnerNo();
			fileVO.setPartnerNo(partnerNo);
			fileDao.insertPartnerFile(fileVO);
		}
	}

	@Override
	public void delete(Long partnerNo) {
		dao.delete(partnerNo);
	}

	@Override
	public PartnerVO detail(Long itemNo) {
		PartnerVO partnerVO = dao.detail(itemNo);
		FileVO fileVO = fileDao.selectPartnerFile(partnerVO.getPartnerNo());
		partnerVO.setFileVO(fileVO);
		return partnerVO;
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

	@Override
	public Map<String, Integer> getItemCount(Long partnerNo) {
		Map<String, Integer> result = new HashMap<String, Integer>();
		int itemWaitCount = dao.getItemWaitCount(partnerNo);
		int itemCompCount = dao.getItemCompCount(partnerNo);
		result.put("itemWaitCount", itemWaitCount);
		result.put("itemCompCount", itemCompCount);

		return result;

	}

	@Override
	public List<ItemVO> selectItemList(Long partnerNo, String sortBy) {
		List<ItemVO> selectItemList = dao.selectItemList(partnerNo, sortBy);
		return selectItemList;
	}

	@Override
	public List<PartnerVO> selectRespList() {
		List<PartnerVO> selectRespList = dao.selectRespList();
		return selectRespList;
	}

	
}
