package kr.ac.kopo.report.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.report.dao.ReportDao;
import kr.ac.kopo.report.web.ReportVO;

@Service
public class ReportServiceImpl implements ReportService {

	@Autowired
	ReportDao dao;

	@Override
	public List<ReportVO> reportList(ReportVO reportVO) {
		// TODO Auto-generated method stub
		return null;
	}
}
