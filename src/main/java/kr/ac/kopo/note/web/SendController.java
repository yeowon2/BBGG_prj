package kr.ac.kopo.note.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.note.service.NoteService;
import kr.ac.kopo.pager.Pager;

@Controller
@RequestMapping("/note/send")
public class SendController {
	
	private String path = "note/send/";
	
	@Autowired
	NoteService service;
	
	@GetMapping("/list")
	public String list(Model model, Pager pager) {
		
		return path + "list";
	}
}
