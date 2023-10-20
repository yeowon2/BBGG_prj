package kr.ac.kopo.sublet.dao;

import java.util.List;

import kr.ac.kopo.sublet.web.SubletVO;

public interface SubletDao {

	List<SubletVO> selectList();

	void add(SubletVO subletVO);
	
}
