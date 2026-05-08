package com.kh.web.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.web.member.model.dto.MemberDto;
import com.kh.web.member.model.service.MemberService;

@WebServlet("/login.do")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginController() {
        super();
      
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 절차 (get 인지 post인지 생각)
		// 1) GET? POST? POST => 인코딩
		request.setCharacterEncoding("UTF-8");
		
		//2) 요청 시 전달값이 있나? => POST는 무조건 있음 (원래는 INSERT할 때 쓰는데 얘는 비밀번호 노출시키기 싫어서 SELECT인데 씀)
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		
		//3) 가공
		MemberDto member = new MemberDto();
		member.setUserId(userId);
		member.setUserPwd(userPwd);
		
		//4) 요청처리~ => Service 단으로 전달 => 전통적인 session 방식 로그인 => 규모가 작은 프로젝트에서 구현됨
		
		MemberDto loginMember =  new MemberService().login(member);
		//성공했을 경우 : 조회성공한 컬럼값을 필드에 담은 맴버 객체의 주소 값
		//실패했을 경우 : null값
		
		//5) 결과값 반환 / 응답화면 지정
		/*
		 * session : 모든 JSP와 Servlet에서 값을 꺼내서 쓸 수 있는 저장소
		 * 				단, session에 값이 지워지기 전까지
		 * 			세선 종료 시점 : 브라우저 종료, 서버 종료, 코드로 지움
		 * 
		 * request : 해당 request를 포워딩한 응답 JSP에서까미나 쓸 수 있음
		 *			 요청부터 응답까지만  사용이 가능 
		 * request는 일회성?  
		 *
		 */
		
		if(loginMember != null) {
//			request.setAttribute("userInfo", loginMember);
//			response.sendRedirect("/kh");
//			request.getRequestDispatcher("/index.jsp").forward(request, response);
			
			HttpSession session = request.getSession();
			session.setAttribute("userInfo", loginMember);
			response.sendRedirect("/kh");
			// 쿠기 session임 만료됨 userInfo라고만 써있으면 회원간 구분이 안돼서 이걸로 구분함
			
			//깃허브 빈폴더 안올라감 그럼 문제 안생기나  빈폴더에 파일 하나 만들고 .찍음
			
		} else {
			request.setAttribute("message", "로그인에 실패했습니다.");
			request.getRequestDispatcher("/WEB-INF/views/common/fail_page.jsp").forward(request, response);
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}