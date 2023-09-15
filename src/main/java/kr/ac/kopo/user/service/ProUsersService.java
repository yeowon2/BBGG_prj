package kr.ac.kopo.user.service;

import java.util.List;

import kr.ac.kopo.pager.Pager;
import kr.ac.kopo.user.web.ProUsersVO;

public interface ProUsersService {

	List<ProUsersVO> list(Pager pager);

	void add(ProUsersVO proVO);

	ProUsersVO select(Long proUnumber);

	void update(ProUsersVO proVO);

	void delete(Long proUnumber);

}
