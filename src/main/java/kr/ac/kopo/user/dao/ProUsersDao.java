package kr.ac.kopo.user.dao;

import java.util.List;

import kr.ac.kopo.pager.Pager;
import kr.ac.kopo.user.web.ProUsersVO;

public interface ProUsersDao {

	int total(Pager pager);

	List<ProUsersVO> list(Pager pager);

	void add(ProUsersVO proVO);

	ProUsersVO select(Long proUnumber);

	void update(ProUsersVO proVO);

	void delete(Long proUnumber);

	


}
