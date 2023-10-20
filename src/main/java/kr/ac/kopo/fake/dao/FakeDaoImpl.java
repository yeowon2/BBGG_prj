package kr.ac.kopo.fake.dao;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import kr.ac.kopo.fake.web.FakeVO;
import kr.ac.kopo.fake.web.FakeFileVO;
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
	public void fakeAdd(Long itemNo, FakeVO fakeVO, FakeFileVO uploadVO, File saveFile, String userId) {
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("itemNo", itemNo);
		paramMap.put("fakeVO", fakeVO);
		paramMap.put("uploadVO", uploadVO);
		paramMap.put("saveFile", saveFile);
		paramMap.put("userId", userId);
		System.out.println(saveFile);
		sql.insert("fake.insert", paramMap); // 신고 text 선 저장
		sql.insert("fake.insertFile", paramMap); // 파일 후 저장
	}

	@Override
	public void fakeAdd(Long itemNo, FakeVO fakeVO, String userId) {
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("itemNo", itemNo);
		paramMap.put("fakeVO", fakeVO);
		paramMap.put("userId", userId);
		
		sql.insert("fake.insert", paramMap);
	}
	
	@Override
	public int total(Pager pager) {
		return sql.selectOne("fake.total", pager);
	}

	@Override
	public void update(int itemNo) {
		sql.update("fake.update");
	}

}