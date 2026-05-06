package com.kh.first.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/post.do")
public class RequestPostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RequestPostServlet() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		System.out.println("POST방식 요청시에도 doGet() 호출");
		
		//1. 값뽑고 가공하기
		//2. 요청처리 --> Service 단 호출
		//3. 결과값 반환(응답화면 지정)
		
		//POST 방식의 요청일 경우 인코딩 설정이 ISO-8869-1 방식으로 바뀌기 때문에
		// 인코딩 방식을 변경해주지 않으면 한글의 경우 다 깨짐 (복소수 뭐시긴가)
		request.setCharacterEncoding("UTF-8");
		
		String name = request.getParameter("name");
		System.out.println(name);
		//나머지 input요소 값들도 getParameter 또는 getParameterValue메소드를 호출해서 받아와서 변수에 대입한 뒤
		// 콘솔창에 출력하기 시작!
		String gender = request.getParameter("gender");
		System.out.println(gender);
		
		int age = Integer.parseInt(request.getParameter("age"));
		System.out.println(age);
		
		String city = request.getParameter("city");
		System.out.println(city);
		
		int height = Integer.parseInt(request.getParameter("height"));
		System.out.println(height);
		
		String[] foods = request.getParameterValues("food");
//		System.out.println(Arrays.toString(foods));
		if(foods != null) {
			System.out.println(String.join("-", foods));	
		}
		

		//2단계
		// 요청처리
		//Service ->DAO -> DB
		// List / DTO(VO) / int
		// 이건 나중에 근데 미리 한번 따로 해보는 것도
		
		// 3단계
		// 응답데이터
		
		//3_1. JSP 를 이용해서 응답페이지 만들기
		
		//JSP(Java Server Page -> 2017년도까지,
		//	   Jakarta Server Page -> 2017년도 부터)
		// Java 기반의 서버사이드 웹 페이지 생성 기술
		//특징 : ☆서버에서 실행되어 동적으로 웹페이지를 생성할 수 있음 ★
		
		//---------------------------------------------------
		//응답화면(JSP)에서 필요한 데이터를 넘겨줄 것(request에 담아서)
		// attribute => 키 - 벨류 세스톨 묶어서 값을 담을 수 있음
//		request.setAttribute("키", "벨류");
		
		request.setAttribute("name", name);
		request.setAttribute("age", age);
		// 벨류 부분에 오브젝트 타입으로 담기는데 기본 자료형은 들어갈 수 없음
		// 참조 자료형인 Integer 로 오토 박싱돼서 담김 다형성
		request.setAttribute("gender", gender);
		request.setAttribute("height", height);
		request.setAttribute("city", city);
		request.setAttribute("foods", foods);
		request.setAttribute("msg", "성공추카포카");
		
		//응답 데이터 생성과정을 JSP에게 위임(강사 왈 배정이 좀 더 맞다고 생각함)
		
		// 배정 시 필요한 객체 : RequestDispatcher
		//request.getRequestDispatcher("JSP파일의 경로);
		
		// /로 시작시 webapp/을 의미함
		
		RequestDispatcher view = request.getRequestDispatcher("/views/response_page.jsp");
		view.forward(request, response);
		
		
		
		
		
		
		
		
		
		
		
		
		
	}
	
	
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		System.out.println(" 얘 먼저~");
		doGet(request, response);
	}

}
