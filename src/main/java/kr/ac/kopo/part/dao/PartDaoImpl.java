package kr.ac.kopo.part.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.pager.Pager;
import kr.ac.kopo.part.web.PartVO;

@Repository
public class PartDaoImpl implements PartDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public List<PartVO> list(Pager pager) {
		
		return sql.selectList("part.list", pager);
	}

	@Override
	public void add(PartVO partVO) {
		sql.insert("part.add", partVO);
	}

	@Override
	public PartVO select(Long partNo) {
		return sql.selectOne("part.select", partNo);
	}

	@Override
	public void update(PartVO partVO) {
		sql.update("part.update", partVO);
	}

	@Override
	public void delete(Long partNo) {
		sql.update("part.delete", partNo);
	}

	@Override
	public int total(Pager pager) {
		return sql.selectOne("part.total", pager);
	}

}
