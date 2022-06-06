package kr.co.imh.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

// preHandle: controller가 요청을 처리하기 전 호출하는 메소드 
// postHandle: 예외가 발생하지 않은 경우에만 controller가 작업이 끝나면 호출되는 메소드
// afterCompletion: 예외 발생여부에 관계 없이 controller가 작업이 끝나면 호출되는 메소드

// 회원여부 인터셉터(check)
public class AuthenticationInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// 클라이언트에 부여한 세션을 가져온다.
		HttpSession session = request.getSession();
		// 세션이 없다면 (로그인이 아니라면)->로그인으로 이동
		if (session.getAttribute("user")== null) {
			response.sendRedirect(request.getContextPath()+"/board/login");
			return false;
		}
		return true; // 로그인 상태라면 통과
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub

	}

}
