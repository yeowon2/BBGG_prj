package kr.ac.kopo.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.util.WebUtils;

public class SessionExpiredInterceptor extends HandlerInterceptorAdapter {
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		  if (WebUtils.getSessionAttribute(request, "loginVO") == null) {
	            // 세션이 만료되었을 때 로그인 페이지로 리디렉션
	            response.sendRedirect(request.getContextPath() + "/login");
	            return false; // 처리 중단
	        }
	        return true; // 계속 진행
	}
}
