<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 이 구문을 스크립틀릿(scriptlet)이라고 함
	// 자바코드를 쓸 수 있음
	
	// 현재 JSP 상에서 출력해줄 값 => request의 Attrubute로 set해서 전달받음
	
	// request.getAttribute("name값") : Object
	
	String name = (String)(request.getAttribute("name"));
	String gender = (String)(request.getAttribute("gender"));
	int age = (int)request.getAttribute("age");
	int height = (int)request.getAttribute("height");
	String[] foods = (String[])request.getAttribute("foods");
	String city = (String)(request.getAttribute("city"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
	JSP는 Servlet으로 변환돼서 동작
	얘는 문자열 아니고 자바 코드임 상단에 language="java" 라고 써있음
	
 -->
 
 	<h1>진짜로 위임 받았나~?</h1>
 	
 	<h3><%=name %>님의 정보~</h3>
 	
 	나이 : <%= age%> <br>
 	키 : <%= height%> <br>
 	지역 : <%= city%> <br>
 	
 	성별 : 
 	<%if("선택안함".equals(gender)){%>
 		선택안함쓰~ <br>
 	<%} else if("남자".equals(gender)){%>
 		남자쓰 <br>
 	<%} else { %>
 		여자쓰 <br>
 	<%}  %>
 	
 	좋아하는 음식쓰~:
 	<%if(foods == null) { %>
 		안골랐으
 	<%} else { %>
 		<ul>
 			<% for(int i = 0; i < foods.length; i++) { %>
 				<li><%= foods[i] %> </li>
 			<%} %>
 		</ul>
 		입니다.
 	<%} %>
 	
 	<hr>
 	
 	${ msg }
 	<!-- el구문 -->
</body>
</html>