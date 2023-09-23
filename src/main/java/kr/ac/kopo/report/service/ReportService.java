package kr.ac.kopo.report.service;

import java.util.List;

import kr.ac.kopo.report.web.ReportVO;

public interface ReportService {

	List<ReportVO> reportList(ReportVO reportVO);

}