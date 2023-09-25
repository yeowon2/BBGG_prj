package kr.ac.kopo.report.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.report.web.ReportVO;
import kr.ac.kopo.room.web.RoomVO;

@Repository
public class ReportDaoImpl implements ReportDao {
	
	@Autowired
	SqlSession sql;

	@Override
	public List<ReportVO> reportList(ReportVO reportVO) {
		return sql.selectList("report.list", reportVO);
	}

	@Override
	public ReportVO reportAdd(RoomVO roomNo) {
		return null;
	}

}
