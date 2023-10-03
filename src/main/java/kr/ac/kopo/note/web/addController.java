package kr.ac.kopo.note.web;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.note.service.NoteService;
import kr.ac.kopo.user.web.UserVO;

@Controller
@RequestMapping("/itemDetail")
public class addController {
	
private String path = "note/send/";
	
	@Autowired
	NoteService service;

	@GetMapping("/{itemNo}/add")
	public String add(@PathVariable Long itemNo) {

		return path + "add";
	}
	
	@PostMapping("/{itemNo}/add")
	public String add(@PathVariable Long itemNo, NoteVO noteVO, HttpSession session) {
		UserVO loginVO = (UserVO) session.getAttribute("loginVO");
		System.out.println("-=============================");
		System.out.println(loginVO.getUserNo());
		 noteVO.setUserNo(loginVO.getUserNo());
		service.add(itemNo, noteVO);
		
		return "redirect:/itemDetail/{itemNo}";
	}
	
}
