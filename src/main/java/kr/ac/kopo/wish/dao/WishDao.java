package kr.ac.kopo.wish.dao;

import java.util.Map;

import kr.ac.kopo.wish.web.WishVO;

public interface WishDao {

	void add(WishVO wishVO);

	WishVO select(WishVO wishVO);

}
