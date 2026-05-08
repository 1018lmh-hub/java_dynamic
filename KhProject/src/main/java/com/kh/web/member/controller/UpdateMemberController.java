package com.kh.web.member.controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.web.member.model.dto.MemberDto;
import com.kh.web.member.model.service.MemberService;


@WebServlet("/update.me")
public class UpdateMemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UpdateMemberController() {
        super();
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1) GET? POST?
        // POST => 인코딩
//		request.setCharacterEncoding("UTF-8"); 
		//앞으로는 filter 패키지를 만들고 filter를 만들어서 대체 가능
		
		// 2) 요청 시 전달값 뽑아서 가공하기
		String userName = request.getParameter("userName");
		String email = request.getParameter("email");
		
		/*
		 * UPDATE 
		 *        WEB_MEMBER
		 *    SET
		 *        USER_NAME = #{userName}
		 *      , EMAIL={email}
		 *  WHERE
		 *        
		 */
		
		// 2_2) 현재 요청보낸 사용자의 정보 뽑기
		HttpSession session = request.getSession();
		MemberDto member = (MemberDto) session.getAttribute("userInfo");
		Long userNo = member.getUserNo(); // 클라이언트 단인지 서버단인지 구분 잘하기 id도 unique지만 의미론적으로 pk인 userNo가 적절
		
		//(환경구성, 사전작업, 설정)(같은 뜻)이 늘어나고 코드가 줄어든다. 근데 설정이 너무 어렵 Spring, 한국은 쉬운편
		// 문법이 어떤 버전에 있는지 어떤 곳에서 쓰는건지, 어떤 뜻인지 같은 뜻을 가진 또 다른 문법, 일단 정리를 좀 해서
		// 공부의 방향을 정하자 ㄱ
		
		// 3) 가공 (DTO를 사용하지 않고)
		// Map
		
//		Map<String, String> map = new HashMap();
//		map.put("userName", userName);
//		map.put("email", email);
//		map.put("userNo", String.valueOf(userNo));
		
		
		//Map.of() : K-V 10개까지 생성과 동시에 요소 초기화 가능 : 불변맵 반환 
		// 그래도 DTO가 젤 좋음 설명하기 위해서
		Map<String,String> map = Map.of("userName", userName
									  , "email", email
									  , "userNo", String.valueOf(userNo));
		
		//4) Service단 호출
		MemberDto userInfo = new MemberService().updateMember(map);
		
		//5) 결과값에 따라서 응답화면 지정
		if(userInfo != null) {
			
//			member.setEmail(email);
//			member.setUserName(userName);
			
			session.setAttribute("userInfo", userInfo);
			
			
			
//			request.getRequestDispatcher("/WEB-INF/views/member/my_page.jsp").forward(request, response);
			
			//클라이언트에게
			// 너 mypage.do로 요청을 보내지 않을래>?
			response.sendRedirect("/kh/mypage.do");
			
		} else {
			request.setAttribute("message", "정보 수정에 실패했습니다...");
//			request.getRequestDispatcher("/WEB-INF/views/common/fail_page.jsp").forward(request, response);
			response.sendRedirect("/kh/fail.do");
		}
		
		
		
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
