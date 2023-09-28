package kr.ac.kopo.note.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.note.service.NoteService;

@Controller
@RequestMapping("/itemSelect")
public class addController {
	
private String path = "note/send/";
	
	@Autowired
	NoteService service;

	@GetMapping("/{itemNo}/add")
	public String add(@PathVariable Long itemNo) {

		return path + "add";
	}
	
	@PostMapping("/{itemNo}/add")
	public String add(@PathVariable Long itemNo, NoteVO noteVO) {
		service.add(itemNo, noteVO);
		
		
		return "redirect:/itemDetail/{itemNo}";
	}
	
}
