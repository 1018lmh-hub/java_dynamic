package com.kh.web.board.controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.kh.web.member.model.dto.MemberDto;


@WebServlet("/insert.bo")
public class BoardInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public BoardInsertController() {
        super();
      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		//값뽑기 =>  제목,  내용 => BoardDto로 가공
		//     => 파일		=> 이거저거         => DTO로 가공
		String boardTitle = request.getParameter("boardTitle");
//		System.out.println(boardTitle);
		
		//form태그로 요청을 했을 때 multipart/form-data형식으로 요청한다면
		//request.getParameter로는 요청 시 전달값을 뽑아낼 수 없음
		
		HttpSession session = request.getSession();
		MemberDto member =(MemberDto)session.getAttribute("userInfo");
		
		if(member ==null) {
			session.setAttribute("message", "글쓰기는 로그인 이후 가능합니다.");
			response.sendRedirect("/kh/fail.do");
			return;
		}
		
		//요즘 가장 일반적인 방법은 => 테이블에 컬럼(ROLE)을 하나 만들기 => ADMIN /USER
		
		//1) 요청이 multipart 방식으로 잘 왔는가를 확인
		
		if(ServletFileUpload.isMultipartContent(request)) {
//			System.out.println("요청이닷!");
			
			//2) 파일 전송 시 필요한 세팅
			//2-1) 파일 용량 제한
			/*
			 * 1bit는 0101110 중에 0(or 1) 이거 하나
			 * 1bit * 8 => 1Byte
			 * 1Byte * 1024 => 1KByte
			 * 1KByte * 1024 => 1GByte
			 *  1GByte * 1024 => 1TByte
			 *  1TByte * 1024 => 1PByte
			 *  ...
			 *  
			 *  10MegaByte
			 *  
			 */
			
			int maxSize = 10 * 1024 * 1024;
			
			//2_2. 서버의 파일 저장할 경로를 얻어내야함
			// pageContext
			// HttpServletRequest
			// HttpSession
			// ServletContext => getRealPath()
			//request.getServletContext()
			//session.getServletContext();
			
			ServletContext application = session.getServletContext();
			String savePath = application.getRealPath("/resources/board_upfiles");
//			System.out.println(savePath);
//			장점
//			동적으로 실제 경로 확인 | 서버 환경에 관계없이 동작
//			단점
//			WAR파일 배포 시 파일이 사라짐
			
			//3. 파일 업로드
			
			// a.jpg 	a2.jpg 		a3.jpg
			// kakaoTalk_ 20260511_173640 123 		.jpg
			
		}
		
		
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
