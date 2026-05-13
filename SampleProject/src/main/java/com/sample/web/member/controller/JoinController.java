package com.sample.web.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sample.web.member.model.dto.MemberDto;
import com.sample.web.member.model.service.MemberService;


@WebServlet("/join.do")
public class JoinController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public JoinController() {
        super();
       
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//		request.setCharacterEncoding("UTF-8");
	
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		String userName = request.getParameter("userName");
		String email = request.getParameter("email");
		

		MemberDto member =  new MemberDto(userId, userPwd, userName, email);
		
	
		
		int result = new MemberService().insertMember(member);
		

		if(result > 0) {
//			response.sendRedirect("/sample");
			response.sendRedirect(request.getContextPath());
			return;
			
			
		} 
			
		request.setAttribute("message", "회원가입 실패");
//			request.getRequestDispatcher("/WEB-INF/views/common/fail_page.jsp").forward(request, response);	
		response.sendRedirect(request.getContextPath() + "/fail.do");
		return;
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
