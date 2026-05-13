package com.sample.web.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sample.web.member.model.dto.MemberDto;


@WebServlet("/mypage.do")
public class MyPageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	
    public MyPageController() {
        super();
      
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		MemberDto member = (MemberDto)session.getAttribute("userInfo");
		
		if(member != null) {
			request.getRequestDispatcher("/WEB-INF/views/member/my_page.jsp").forward(request, response);
			return;
		}	
		request.setAttribute("message", "정상적이지 않은 접근입니다.");
		request.getRequestDispatcher("WEB-INF/views/common/fail_page.jsp").forward(request, response);
		return;
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
