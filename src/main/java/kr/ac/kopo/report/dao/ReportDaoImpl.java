package kr.ac.kopo.report.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import kr.ac.kopo.report.web.ReportVO;
import kr.ac.kopo.room.web.RoomVO;

@Repository
public class ReportDaoImpl implements ReportDao {
	
	@Autowired
	SqlSession sql;

//	@Override
//	public List<ReportVO> reportList(ReportVO reportVO) {
//		return sql.selectList("report.selectList", reportVO);
//	}

	@Override
	public void reportAdd(Long roomNo, ReportVO reportVO, Model model) {
		sql.insert("report.insert", roomNo);
		
	}

}
