package kr.ac.kopo.guide.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class GuideDaoImpl implements GuideDao {
	
	@Autowired
	SqlSession sql;

}