package kr.ac.kopo.login.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ac.kopo.login.service.LoginService;
import kr.ac.kopo.partner.web.PartnerVO;
import kr.ac.kopo.user.service.UserService;
import kr.ac.kopo.user.web.UserVO;

@Controller
public class LoginController {

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class); 
	
	@Autowired
	private LoginService loginService;
	
	@Autowired
	private UserService userService;


	//로그인 화면 
	@GetMapping("/login")
	public String login(@ModelAttribute UserVO userVO, Model model, HttpSession session, HttpServletRequest request) {
		
		// 이전 페이지의 URL을 세션에 저장
		if(session.getAttribute("prevPage") == null) {
			String referrer = request.getHeader("Referer");
			request.getSession().setAttribute("prevPage", referrer);
		}
		
		return "login/login";
	};
	
	@PostMapping("/actionLogin")
	public String actionLogin(@ModelAttribute UserVO userVO, 
			@ModelAttribute PartnerVO partnerVO, 
			Model model, HttpSession session, HttpServletResponse response, 
			@RequestParam("userType") boolean userType
			) {
		
		if (userType) { // 중개사 회원 로그인
	        // 중개사 회원 로그인 로직을 구현
	        PartnerVO loginPartnerVO = loginService.actionLoginPartner(partnerVO);
	       Long partnerNo = loginPartnerVO.getPartnerNo();
			
	        if (loginPartnerVO != null && loginPartnerVO.getUserId() != null && !loginPartnerVO.getUserId().equals("") && !loginPartnerVO.getPhone().equals("kakao가입자")) {
	        	
	        	session.setAttribute("loginPartnerVO", loginPartnerVO);
	        	
	            return "redirect:/partner/" + partnerNo;
	        } else {
	            model.addAttribute("loginMessage", "중개사 로그인 정보가 올바르지 않습니다.");
	            return "redirect:/login";
	        }
	    } 
		else { // 일반 사용자 로그인
	        UserVO loginVO = loginService.actionLogin(userVO);
	        // 로그인 성공 후, 이전 페이지의 URL을 가져옴
            String prevPage = (String) session.getAttribute("prevPage");
	        if (loginVO != null && loginVO.getUserId() != null && !loginVO.getUserId().equals("") && !loginVO.getPhone().equals("kakao가입자")) {
	            session.setAttribute("loginVO", loginVO);
	            if(loginVO.getUseAt().equals("A")) {
	            	return "redirect:/admin";
	            }
	            if (prevPage != null && !prevPage.isEmpty()) {
	                // 이전 페이지가 있는 경우 해당 페이지로 리다이렉트
	                session.removeAttribute("prevPage"); // 세션에서 이전 페이지 URL 제거
	                return "redirect:" + prevPage;
	            } else {
	                // 이전 페이지가 없는 경우 기본 리다이렉트 URL 설정
	                return "redirect:/";
	            }
	        } else {
	            model.addAttribute("loginMessage", "로그인 정보가 올바르지 않습니다.");
				return "redirect:/login";
	            
	        }
	    }
	}
	
	/* 카카오 로그인/회원가입 */
	@PostMapping("/kakaoLogin")
	public String kakaoMember(@ModelAttribute UserVO userVO, HttpServletRequest request, Model model, HttpSession session, HttpServletResponse response) {
		// userVO에 값이 있는지 확인
		userVO.setUserPw(userVO.getUserId());
		UserVO loginVO = loginService.actionLogin(userVO);
	    if (loginVO != null && loginVO.getUserId() != null && !loginVO.getUserId().equals("") && loginVO.getPhone().equals("kakao가입자")) {
	        // 값이 있다면 로그인을 수행
	        if (loginVO.getUserId() != null && loginVO.getUserName() != null) {
	            session.setAttribute("loginVO", loginVO);
	           
	            // 로그인 성공 후, 이전 페이지의 URL을 가져옴
	            String prevPage = (String) session.getAttribute("prevPage");
	            
	            if (prevPage != null && !prevPage.isEmpty()) {
	                // 이전 페이지가 있는 경우 해당 페이지로 리다이렉트
	                session.removeAttribute("prevPage"); // 세션에서 이전 페이지 URL 제거
	                return "redirect:" + prevPage;
	            } else {
	                // 이전 페이지가 없는 경우 기본 리다이렉트 URL 설정
	                return "redirect:/";
	            }
	        } else {
	            model.addAttribute("loginMessage", "로그인 정보가 올바르지 않습니다.");
	            return "redirect:/login";
	        }
	    } 
	    else {
	        // 값이 없다면 회원가입을 수행
	        UserVO kakaovo = userVO;
	        
	        kakaovo.setUserId(userVO.getUserId());
			kakaovo.setUserPw(kakaovo.getUserId());
			kakaovo.setUserName(userVO.getUserName());
			kakaovo.setPhone("kakao가입자");
			userService.add(kakaovo);
			
	        session.setAttribute("loginVO", kakaovo);
	        
	        // 로그인 성공 후, 이전 페이지의 URL을 가져옴
            String prevPage = (String) session.getAttribute("prevPage");
            
            if (prevPage != null && !prevPage.isEmpty()) {
                // 이전 페이지가 있는 경우 해당 페이지로 리다이렉트
                session.removeAttribute("prevPage"); // 세션에서 이전 페이지 URL 제거
                return "redirect:" + prevPage;
            } else {
                // 이전 페이지가 없는 경우 기본 리다이렉트 URL 설정
                return "redirect:/";
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
