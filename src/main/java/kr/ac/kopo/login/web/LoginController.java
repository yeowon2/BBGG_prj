package kr.ac.kopo.login.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ac.kopo.login.service.LoginService;
import kr.ac.kopo.partner.web.PartnerVO;
import kr.ac.kopo.user.web.UserVO;

@Controller
public class LoginController {

	@Autowired
	private LoginService loginService;


	//로그인 화면 
	@GetMapping("/login")
	public String login(@ModelAttribute UserVO userVO, Model model, HttpSession session, HttpServletRequest request) {

		return "login/login";
	};
	
	@PostMapping("/actionLogin")
	public String actionLogin(@ModelAttribute UserVO userVO, @ModelAttribute PartnerVO partnerVO, Model model, HttpSession session, HttpServletResponse response, @RequestParam("userType") boolean userType) {
	   
		if (userType) { // 중개사 회원 로그인
	        // 중개사 회원 로그인 로직을 구현
	        PartnerVO loginPartnerVO = loginService.actionLoginPartner(partnerVO);
	        if (loginPartnerVO != null && loginPartnerVO.getUserId() != null && !loginPartnerVO.getUserId().equals("")) {
	            session.setAttribute("loginPartnerVO", loginPartnerVO);
	           
	            return "redirect:/partner"; // 중개사 회원 로그인 후 이동할 페이지 주소
	        } else {
	            model.addAttribute("loginMessage", "중개사 로그인 정보가 올바르지 않습니다.");
	            return "redirect:/login";
	        }
	    } 
		else { // 일반 사용자 로그인
	        UserVO loginVO = loginService.actionLogin(userVO);
	        if (loginVO != null && loginVO.getUserId() != null && !loginVO.getUserId().equals("")) {
	            session.setAttribute("loginVO", loginVO);
	            
	            return "redirect:/";
	        } else {
	            model.addAttribute("loginMessage", "로그인 정보가 올바르지 않습니다.");
	            return "redirect:/login";
	        }
	    } 
	}

	//로그아웃 처리
	@GetMapping("/actionLogout")
	public String actionLogout(Model model, HttpSession session) {
		session.invalidate();
		
		return "redirect:/";
	}
}
