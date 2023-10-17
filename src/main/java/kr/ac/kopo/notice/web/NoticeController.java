package kr.ac.kopo.notice.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class NoticeController {
	
	@GetMapping("/notice")
	String notice() {
		return "/admin/notice";
	}
}
