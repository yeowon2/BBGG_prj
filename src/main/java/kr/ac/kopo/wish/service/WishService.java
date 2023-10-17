package kr.ac.kopo.wish.service;

import kr.ac.kopo.wish.web.WishVO;

public interface WishService {

	boolean add(WishVO wishVO);

	void add(Long userNo, Long itemNo);

	boolean isInWish(Long userNo, Long itemNo);

}
