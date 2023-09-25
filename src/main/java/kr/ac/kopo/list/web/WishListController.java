package kr.ac.kopo.list.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.ac.kopo.list.service.WishListService;

@Controller
public class WishListController {

	@Autowired
	WishListService service;	
	
	private final String path = "list/";
	
	
	@GetMapping("/wishList")
	public String wishList(Model model, HttpServletRequest request) {

			return path + "recentList";
	}
}

