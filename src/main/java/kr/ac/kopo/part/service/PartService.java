package kr.ac.kopo.part.service;

import java.util.List;

import kr.ac.kopo.pager.Pager;
import kr.ac.kopo.part.web.PartVO;
import kr.ac.kopo.user.web.UserVO;

public interface PartService {

	List<PartVO> list(Pager pager);

	void add(PartVO partVO);

	PartVO select(Long partNo);

	void update(PartVO partVO);

	void delete(Long partNo);

}
