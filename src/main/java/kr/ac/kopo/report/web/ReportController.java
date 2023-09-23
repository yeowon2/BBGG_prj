package kr.ac.kopo.report.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import kr.ac.kopo.note.service.NoteService;
import kr.ac.kopo.note.web.NoteVO;
import kr.ac.kopo.report.service.ReportService;
import kr.ac.kopo.user.web.UserVO;

@Controller
public class ReportController {
	
	@Autowired
	ReportService service;
	
	final String path = "report/";
	
	@GetMapping("list")
	public String reportList(Model model, ReportVO reportVO) {
		List<ReportVO> list = service.reportList(reportVO);
		model.addAttribute("list", list);

		return path + "list";
	}
	
	
	@GetMapping("add")
	public String reportAdd(HttpSession session) {
		//if(session.getId() != null) {
		if(true) {
			return path + "add";
		} else {
			return "login";
		} 
	}
	
	@PostMapping("add")
	public String reportAdd(@ModelAttribute UserVO userVO, HttpSession session) {
		userVO.getUserId();
		return "";
	}
}
