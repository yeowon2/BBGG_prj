package kr.ac.kopo.fake.dao;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.fake.web.FakeVO;
import kr.ac.kopo.pager.Pager;

@Repository
public class FakeDaoImpl implements FakeDao {
	
	@Autowired
	SqlSession sql;

	@Override
	public List<FakeVO> list(Pager pager) {
		return sql.selectList("fake.selectList", pager);
	}

	@Override
	public void fakeAdd(Long itemNo, FakeVO fakeVO, File saveFile) {
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("itemNo", itemNo);
		paramMap.put("fakeVO", fakeVO);
		paramMap.put("saveFile", saveFile);
		System.out.println(saveFile);
		sql.insert("fake.insert", paramMap);
		
	}

	@Override
	public int total(Pager pager) {
		return sql.selectOne("fake.total", pager);
	}

}