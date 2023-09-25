package kr.ac.kopo.report.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kr.ac.kopo.report.dao.ReportDao;
import kr.ac.kopo.report.web.ReportVO;
import kr.ac.kopo.room.web.RoomVO;

@Service
public class ReportServiceImpl implements ReportService {

	@Autowired
	ReportDao dao;
	
	@Override
	public List<ReportVO> reportList(ReportVO reportVO) {
		return null; // @@@@@@@@@@
	}

	@Override
	public void reportAdd(Long roomNo, ReportVO reportVO, Model model) {
		dao.reportAdd(roomNo, reportVO, model);		
	}

	

}
