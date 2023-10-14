package kr.ac.kopo.wish.dao;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.wish.web.WishVO;

@Repository
public class WishDaoImpl implements WishDao {
	
	private static final Logger logger = LoggerFactory.getLogger(WishDaoImpl.class);
	
	@Autowired
	SqlSession sql;
	
	@Override
	public void add(WishVO wishVO) {
		 sql.insert("wish.add", wishVO);
	}

	@Override
	public WishVO select(WishVO wishVO) {
		return sql.selectOne("wish.select", wishVO);
	}

}
