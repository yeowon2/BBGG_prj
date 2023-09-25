package kr.ac.kopo.list.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.ac.kopo.list.service.RecentListService;

@Controller
public class RecentListController {

	@Autowired
	RecentListService service;	
	
	final String path = "/list";
	
	
	@GetMapping("/recentList")
	public String reportList(Model model) {
		
		return path + "recentList";
	}
}
