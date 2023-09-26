package kr.ac.kopo.report.dao;

import java.util.List;

import org.springframework.ui.Model;

import kr.ac.kopo.item.web.ItemVO;
import kr.ac.kopo.report.web.ReportVO;

public interface ReportDao {

//	List<ReportVO> reportList(ReportVO reportVO);

	void reportAdd(Long roomNo, ReportVO reportVO);
}
