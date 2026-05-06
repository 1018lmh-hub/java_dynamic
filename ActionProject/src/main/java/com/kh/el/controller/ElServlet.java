package com.kh.el.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/el.do")
public class ElServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ElServlet() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		여기 써있는 거 어지간하면 꼭 지우고 ㄱㄱ
//		만약 서블릿에서 응답할 데이터가 존재한다면!
//		JSP로 포워딩 할 때 request.setAttribute("name값", "value값"); -> forwrd~
//		request -> Servlet내장 객체 / Scope객체
		
//		application / session / request / page ( 총 9개 있고, session / request 는 잘 기억해야함)
		
		/*
		 * 1. application scope : ServletContext
		 * 한 어플리케이션 당 딱 한 개 존재하는 객체
		 * 이 영역에 데이터를 담으면 어플리케이션 전역에서 사용 가능
		 * 
		 * 2. session scope : HttpSession
		 * 하나의 브라우저 당, 한 개 존재하는 객체
		 * 이 영역에 데이터를 담으면 JSP/ Servlet 단에서 사용가능
		 * 값이 한번 담기면 서버를 멈추거나, 세션을 비우거나, 브라우저가 닫히기 전 까지는 계속 사용 가능
		 * 
		 * 3. request scope : HttpServletRequest
		 * 요청 및 응답 시 매 번 생성되는 객체
		 * 이 영역에 데이터를 담으면 해당 request를 포워딩 받는 응답 JSP에서만 사용가능(1회성)
		 * 
		 * 4. page scope : PageContext
		 * JSP 페이지에서만 사용가능
		 * 
		 * => 위 객체들에 속성을 추가할 때는 .setAttrubute("name값", 벨류);
		 * 							.getAttrubute("name값");
		 * 						    .removeAttrubute("name값");
		 * 
		 */
		// DB에서 작업한 요청 처리 결과
		//DTO(VO) 한개, List<DTO>, int, String
		
		// requestScope
		request.setAttribute("classRoom", "501강의실");
		
		//응답 뷰 배정 -> 포워딩
		request.getRequestDispatcher("WEB-INF/views/01_el.jsp").forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
