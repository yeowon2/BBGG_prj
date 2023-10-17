package kr.ac.kopo.admin.web;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ac.kopo.admin.service.AdminService;
import kr.ac.kopo.fake.web.FakeVO;
import kr.ac.kopo.item.web.ItemVO;
import kr.ac.kopo.pager.Pager;
import kr.ac.kopo.partner.web.PartnerVO;
import kr.ac.kopo.user.web.UserVO;

@Controller
public class AdminController {
	
	@Autowired 
	AdminService adminService;
	
	@GetMapping("/admin")
	public String admin(Model model, UserVO userVO, PartnerVO partnerVO, ItemVO itemVO, FakeVO fakeVO) {
		
		List<UserVO> userList = adminService.userList(userVO);
		model.addAttribute("userList", userList);
		
		List<PartnerVO> partnerList = adminService.partnerList(partnerVO);
		model.addAttribute("partnerList", partnerList);
		
		List<ItemVO> itemList = adminService.itemList(itemVO);
		model.addAttribute("itemList", itemList);
		
		List<FakeVO> fakeList = adminService.fakeList(fakeVO);
		model.addAttribute("fakeList", fakeList);
		
		model.addAttribute("userCount", adminService.userCount());
		model.addAttribute("userYestdCount", adminService.userYestdCount());
		model.addAttribute("partnerCount", adminService.partnerCount());
		model.addAttribute("partnerYestdCount", adminService.partnerYestdCount());
		model.addAttribute("itemCount", adminService.itemCount());
		model.addAttribute("itemYestdCount", adminService.itemYestdCount());
		model.addAttribute("fakeCount", adminService.fakeCount());
		model.addAttribute("fakeYestdCount", adminService.fakeYestdCount());
		return "/indexAdmin";
	}
	
	@GetMapping("/admin/userList")
	public String userList(Model model, Pager pager) {
		List<UserVO> list = adminService.userListAll(pager);
		model.addAttribute("list", list);
		return "/admin/userList";
	}
	
	@GetMapping("/admin/itemList")
	public String itemList() {
		return "/admin/itemList";
	}
	
	@GetMapping("/admin/notice")
	public String noticeList(NoticeVO noticeVO, Model model, Pager pager) {
		List<NoticeVO> noticeList = adminService.noticeListAll(pager);
		model.addAttribute("noticeList", noticeList);
		return "/admin/noticeList";
	}
	
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
			return "/admin/noticeAdd";
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

		adminService.addNotice(noticeVO);
		// 글 작성 완료 알럿 @@@@@@@@@@
		return "redirect:/admin/notice";
	}
	
	@GetMapping("/admin/notice{noticeNo}")
	public String noticeSelect(NoticeVO noticeVO) {
		return "/admin/noticeAdmin";
	}

}
