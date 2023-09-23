package kr.ac.kopo.report.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	public ReportVO repoInfo(RoomVO roomNo) {
		return null;
	}

}
