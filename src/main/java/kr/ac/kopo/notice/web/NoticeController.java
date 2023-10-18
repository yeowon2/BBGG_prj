package kr.ac.kopo.notice.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import kr.ac.kopo.notice.service.NoticeService;
import kr.ac.kopo.pager.Pager;
import kr.ac.kopo.user.web.UserVO;

@Controller
public class NoticeController {
	
	@Autowired 
	NoticeService noticeService;
	
	@GetMapping("/notice")
	String notice(NoticeVO noticeVO, Model model, Pager pager) {
		List<NoticeVO> noticeList = noticeService.noticeListAll(pager);
		model.addAttribute("noticeList", noticeList);
		return "/notice/noticeList";
	}
	
//	@GetMapping("/admin/notice")
//	public String noticeList(NoticeVO noticeVO, Model model, Pager pager) {
//		List<NoticeVO> noticeList = noticeService.noticeListAll(pager);
//		model.addAttribute("noticeList", noticeList);
//		return "/notice/noticeList";
//	}
	
	@GetMapping("/admin/noticeAdd")
	public String noticeAdd(NoticeVO noticeVO, HttpSession session) {
	
		UserVO loginVO = (UserVO) session.getAttribute("loginVO");
		if(loginVO == null) {
			// @@@@@@@@@@ 관리자라면 로그인하세요.
			return "redirect:/login";
			}
		String userId = (String) loginVO.getUserId();
		
		if(loginVO != null && userId.contains("admin") && userId != null) {
			userId = (String) loginVO.getUserId();
			noticeVO.setAdminId(userId);
			return "/notice/noticeAdd";
		} else {
			// 관리자로 로그인하셔야합니다. 알럿 @@@@@@@@@@
			return "redirect:/login";
		}
	}
	
	@PostMapping("/admin/noticeAdd")
	public String noticeAdd(NoticeVO noticeVO, HttpServletRequest request, HttpSession session) {
		UserVO loginVO = (UserVO) session.getAttribute("loginVO");
		String userId = (String) loginVO.getUserId();
		noticeVO.setAdminId(userId);
		
		noticeVO.setNoticeTitle(request.getParameter("noticeTitle"));
		noticeVO.setNoticeContent(request.getParameter("noticeContent"));

		noticeService.addNotice(noticeVO);
		// 글 작성 완료 알럿 @@@@@@@@@@
		return "redirect:/admin/notice";
	}
	
	@GetMapping("/admin/notice{noticeNo}")
	public String noticeSelect(NoticeVO noticeVO, @PathVariable Long noticeNo, Model model) {
		noticeVO = noticeService.noticeListOne(noticeNo);
		
		model.addAttribute("noticeVO", noticeVO);
//		model.addAttribute("noticeTitle", noticeVO.getNoticeTitle());
		return "/notice/noticeAdmin";
	}

	
}
