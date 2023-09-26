package kr.ac.kopo.fake.dao;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.fake.web.FakeVO;

@Repository
public class FakeDaoImpl implements FakeDao {
	
	@Autowired
	SqlSession sql;

//	@Override
//	public List<FakeVO> reportList(FakeVO fakeVO) {
//		return sql.selectList("fakeVO.selectList", fakeVO);
//	}

	@Override
	public void fakeAdd(Long roomNo, FakeVO fakeVO, File saveFile) {
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("roomNo", roomNo);
		paramMap.put("fakeVO", fakeVO);
		paramMap.put("saveFile", saveFile);
		System.out.println(saveFile);
		sql.insert("fake.insert", paramMap);
		
	}

}