package kr.ac.kopo.report.web;

import java.io.Console;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import kr.ac.kopo.item.service.ItmeService;
import kr.ac.kopo.item.web.ItemVO;
import kr.ac.kopo.note.service.NoteService;
import kr.ac.kopo.note.web.NoteVO;
import kr.ac.kopo.report.service.ReportService;
import kr.ac.kopo.user.web.UserVO;

@Controller
@RequestMapping("/report")
public class ReportController {
	
	@Autowired
	ReportService service;	
	
	final String path = "/report";
	
	@GetMapping("list")
	public String reportList(Model model, ReportVO reportVO) {
		List<ReportVO> list = service.reportList(reportVO);
		model.addAttribute("list", list);
		return path + "/list";
	}
	
	@GetMapping("/{roomNo}")
	public String report(@PathVariable Long roomNo, HttpSession session, Model model) {
		//model.addAttribute("roomNo", roomNo);
		UserVO loginVO =  (UserVO) session.getAttribute("loginVO");
		System.out.println(loginVO);
		if(loginVO != null) {String userId = loginVO.getUserId();}
		// System.out.println(userId);
		
		if(loginVO != null && loginVO.getUserId() != null && !loginVO.getUserId().equals("")) { 
			return path + "/reportAdd";
		} else {
			model.addAttribute("msg", "로그인 후 이용가능합니다.");
			model.addAttribute("url", "/login");
			return "/alert"; 
		}	
	}
	
	@PostMapping("/{roomNo}")
	public String reportAdd(@PathVariable Long roomNo, HttpSession session, Model model, ReportVO reportVO) {
		model.addAttribute("roomNo", roomNo);
		
		UserVO loginVO =  (UserVO) session.getAttribute("loginVO");
		System.out.println(loginVO);
		if(loginVO != null) {String userId = loginVO.getUserId();}
		
		if(loginVO != null && loginVO.getUserId() != null && !loginVO.getUserId().equals("")) {
			
			service.reportAdd(roomNo, reportVO);
			return "redirect:/roomSelect/{roomNo}";
		} else {	
			model.addAttribute("msg", "로그인 후 이용가능합니다.");
			model.addAttribute("url", "/login/login");
			//return "redirect:/roomSelect/{roomNo}";
			return "/alert"; 
		} 
	}
	// @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
	
	
//	@PostMapping("/add/{roomNo}")
//	public String reportAddAct(@PathVariable Long roomNo, HttpSession session, MultipartFile File) {
//		if(session.getId() != null) { //@@@@@@@@@@
//			System.out.println("출력문확인");
//			System.out.println(File.getOriginalFilename()); 
//			System.out.println(File.getSize());
//			System.out.println("작성되었습니다.");
//			return path + "/reportAdd";
//		}
//		return "/login";
//	}


}
