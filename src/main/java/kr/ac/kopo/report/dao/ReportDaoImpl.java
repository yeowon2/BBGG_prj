package kr.ac.kopo.report.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.report.web.ReportVO;

@Repository
public class ReportDaoImpl implements ReportDao {
	
	@Autowired
	SqlSession sql;

//	@Override
//	public List<ReportVO> reportList(ReportVO reportVO) {
//		return sql.selectList("report.selectList", reportVO);
//	}

	@Override
	public void reportAdd(Long roomNo, ReportVO reportVO) {
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("roomNo", roomNo);
		paramMap.put("reportVO", reportVO);
		sql.insert("report.insert", paramMap);
		
	}

}
