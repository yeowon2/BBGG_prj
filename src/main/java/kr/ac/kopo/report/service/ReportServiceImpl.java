package kr.ac.kopo.report.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kr.ac.kopo.item.web.ItemVO;
import kr.ac.kopo.report.dao.ReportDao;
import kr.ac.kopo.report.web.ReportVO;

@Service
public class ReportServiceImpl implements ReportService {

	@Autowired
	ReportDao dao;
	
	@Override
	public List<ReportVO> reportList(ReportVO reportVO) {
		return null; // @@@@@@@@@@
	}

	@Override
	public void reportAdd(Long roomNo, ReportVO reportVO) {
		dao.reportAdd(roomNo, reportVO);		
	}

	

}
