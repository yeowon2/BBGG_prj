package kr.ac.kopo.sublet.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import kr.ac.kopo.sublet.service.SubletService;
import kr.ac.kopo.user.web.UserVO;

@Controller
@RequestMapping("/sublet")
public class SubletController {
	
	private String path = "sublet/";

	@Autowired 
	SubletService service;
	
	@GetMapping("/list")
	public String list(Model model) {
		List<SubletVO> subletList =  service.selectList();
		model.addAttribute("subletList", subletList);
		return path + "list";
	}
	
	@GetMapping("/add")
	public String add() {
		
		return path + "add";
	}
	@PostMapping("/add")
	public String add(SubletVO subletVO, @SessionAttribute(name="loginVO") UserVO loginVO) {
		subletVO.setRegistUserNo(loginVO.getUserNo());
		service.add(subletVO);
		return "redirect:/sublet/list";
	}
	
}
