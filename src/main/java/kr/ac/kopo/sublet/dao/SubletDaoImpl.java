package kr.ac.kopo.sublet.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.sublet.web.SubletVO;

@Repository
public class SubletDaoImpl implements SubletDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public List<SubletVO> selectList() {
		return sql.selectList("sublet.selectList");
	}

	@Override
	public void add(SubletVO subletVO) {
		sql.insert("sublet.add", subletVO);
	}

}
