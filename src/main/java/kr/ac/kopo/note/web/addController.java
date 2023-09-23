package kr.ac.kopo.note.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.note.service.NoteService;

@Controller
@RequestMapping("/roomSelect")
public class addController {
	
private String path = "note/send/";
	
	@Autowired
	NoteService service;

	@GetMapping("/{roomNo}/add")
	public String add(@PathVariable Long roomNo) {

		return path + "add";
	}
	
	@PostMapping("/{roomNo}/add")
	public String add(@PathVariable Long roomNo, NoteVO noteVO) {
		service.add(roomNo, noteVO);
		
		
		return "redirect:/roomSelect/{roomNo}";
	}
	
}
