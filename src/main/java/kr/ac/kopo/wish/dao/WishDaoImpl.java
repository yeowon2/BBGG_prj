package kr.ac.kopo.wish.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.wish.web.WishVO;

@Repository
public class WishDaoImpl implements WishDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public void add(WishVO wishVO) {
		sql.insert("wish.add", wishVO);
	}

}
