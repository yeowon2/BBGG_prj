package kr.ac.kopo.file;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/file")
public class FileController {

	private final String path = "file/";
	
	@Autowired
	FileService service;
	
	@GetMapping("/add")
	public String add() {
		return path + "addFile";
	}
	
	@PostMapping("/add")
	public String add(FileVO fileVO) {
		MultipartFile file = fileVO.getUploadFile();
		
		service.add(fileVO, file);
		
		return "redirect:/file/detail";
	}
	
	@GetMapping("/detail/{fileNo}")
	public String detail(@PathVariable Long fileNo, Model model) {
		
		FileVO fileVO = service.detail(fileNo);
		model.addAttribute("fileVO", fileVO);
		
		return path + "detailFile";
	}
}
