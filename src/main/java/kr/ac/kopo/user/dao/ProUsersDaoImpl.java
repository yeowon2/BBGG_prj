package kr.ac.kopo.user.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.pager.Pager;
import kr.ac.kopo.user.web.ProUsersVO;

@Repository
public class ProUsersDaoImpl implements ProUsersDao {
	@Autowired
	SqlSession sql;
	
	@Override
	public int total(Pager pager) {
		return sql.selectOne("pro.total", pager);
	}

	@Override
	public List<ProUsersVO> list(Pager pager) {
		return sql.selectList("pro.prolist", pager);
	}

	@Override
	public void add(ProUsersVO proVO) {
		sql.insert("pro.proadd", proVO);
	}

	@Override
	public ProUsersVO select(Long proUnumber) {
		return sql.selectOne("pro.proselect", proUnumber);
	}

	@Override
	public void update(ProUsersVO proVO) {
		sql.update("pro.proupdate", proVO);
	}

	@Override
	public void delete(Long proUnumber) {
		sql.update("pro.prodelete", proUnumber);
	}

}
