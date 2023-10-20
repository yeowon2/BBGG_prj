package kr.ac.kopo.guide.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.guide.dao.GuideDao;

@Service
public class GuideServiceImpl implements GuideService {

	@Autowired
	GuideDao guideDao;
	
	
}