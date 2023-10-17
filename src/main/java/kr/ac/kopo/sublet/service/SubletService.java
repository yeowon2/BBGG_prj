package kr.ac.kopo.sublet.service;

import java.util.List;

import kr.ac.kopo.sublet.web.SubletVO;

public interface SubletService {

	List<SubletVO> selectList();

	void add(SubletVO subletVO);

}
