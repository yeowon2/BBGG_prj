package kr.ac.kopo.wish.service;

import java.util.List;

import kr.ac.kopo.item.web.ItemVO;
import kr.ac.kopo.wish.web.WishVO;

public interface WishService {

	boolean add(WishVO wishVO);

	void add(Long userNo, Long itemNo);

	boolean isInWish(Long userNo, Long itemNo);

	void delete(long userNo, Long itemNo);

}
