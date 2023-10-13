package kr.ac.kopo.wish.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.wish.dao.WishDao;
import kr.ac.kopo.wish.web.WishVO;

@Service
public class WishServiceImpl implements WishService {

	@Autowired
	WishDao dao;
	
	@Override
	public void add(WishVO wishVO) {
		dao.add(wishVO);
	}

}
