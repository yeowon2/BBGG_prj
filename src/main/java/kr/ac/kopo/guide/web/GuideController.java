package kr.ac.kopo.guide.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import kr.ac.kopo.guide.service.GuideService;

@Controller
public class GuideController {
	
	@Autowired 
	GuideService guideService;
	
	@GetMapping("/guide")
	public String guide() {
		return "/guide/guide";
	}
		

	
}
