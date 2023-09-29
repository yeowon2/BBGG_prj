package kr.ac.kopo.file;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/file")
public class FileController {

	private final String path = "file";
	
	@Autowired
	FileService service;
	
	@GetMapping("/add")
	public String add() {
		return path + "addFile";
	}
	
	@PostMapping("/add")
	public String add(FileVO fileVO) {
		service.add(fileVO);
		
		return "redirect:/";
	}
}
