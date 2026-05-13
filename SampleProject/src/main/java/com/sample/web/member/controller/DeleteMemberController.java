package com.sample.web.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sample.web.member.model.dto.MemberDto;
import com.sample.web.member.model.service.MemberService;


@WebServlet("/delete.me")
public class DeleteMemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public DeleteMemberController() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userPwd = request.getParameter("userPwd");
		
		HttpSession session = request.getSession();
		MemberDto userInfo = (MemberDto)session.getAttribute("userInfo");
		
		if(userInfo == null) {
			session.setAttribute("message", "로그인을 먼저 진행해주세요");
			response.sendRedirect(request.getContentType()+"fail.do");
			return;
		}
		
		Long userNo = userInfo.getUserNo();
		
		int result = new MemberService().deleteMember(new MemberDto(userNo, userPwd));
		
		if(result > 0) {
			session.removeAttribute("userInfo");
			response.sendRedirect(request.getContextPath());
			
		} else {
			session.setAttribute("message", "회원 탈퇴에 실패했습니다.");
			response.sendRedirect(request.getContextPath()+"/fail.do");
		}
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
