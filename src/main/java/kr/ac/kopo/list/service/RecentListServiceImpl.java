package kr.ac.kopo.list.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.list.dao.RecentListDao;

@Service
public class RecentListServiceImpl implements RecentListService {

	@Autowired
	RecentListDao dao;
}
