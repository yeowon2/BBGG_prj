package kr.ac.kopo.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import kr.ac.kopo.partner.web.PartnerVO;
import kr.ac.kopo.user.web.UserVO;

public class LoginInterceptor extends HandlerInterceptorAdapter {
	
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {
  	
        HttpSession session = request.getSession();
        UserVO loginVO = (UserVO) session.getAttribute("loginVO");
        PartnerVO partnerLoginVO = (PartnerVO) session.getAttribute("partnerLoginVO");
        if(loginVO == null) {
        	
        	if(partnerLoginVO != null) {
        		return true;
        	}
        }
        
        if (loginVO != null) {
            return true; // 사용자가 로그인되어 있으면 계속 진행
        } 
            
        response.sendRedirect("/login");
      
        return false; 
    }
}
