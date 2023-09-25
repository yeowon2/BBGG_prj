package kr.ac.kopo.report.dao;

import java.util.List;

import kr.ac.kopo.report.web.ReportVO;
import kr.ac.kopo.room.web.RoomVO;

public interface ReportDao {

	List<ReportVO> reportList(ReportVO reportVO);
	
	ReportVO reportAdd(RoomVO roomNo);
}
