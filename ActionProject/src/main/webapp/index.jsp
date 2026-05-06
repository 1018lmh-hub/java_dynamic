<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>호잇</title>
</head>
<body>
	<h1>웰컴파일입니다.</h1>
	
	<h2>* EL (Expression Language)</h2>
	
	<p>
		JSP상에서 자바에서 만들어진 값을 출력하고 싶다면 => &lt;%= 변수 %> <br>
		EL구문을 사용하면 \${ 변수 } 형식으로 작성할 수 있음
	</p>
	
	<%
		String str = "편리한데 불편함";
	%>
	<%= str %> <br>
	모얌
	${ str }
	
	<script>
		const v = '알송달송';
		alert(`문자열 : \${v}`);
	</script>
	
	<h3>EL구문 학습~</h3>
	
	<a>서블릿으로 요청~</a>
	
	<!-- submit으로 요청을 보내는 게 중요한 것이지 꼭 form태그를 사용하지 않아도 된다. -->
	
	<a href="http://localhost:8088/action/el.do">서블릿으로 요청~</a>
	
	<!--action 얘는 뭐더라, el.do 서블릿 매핑값 -->

</body>
</html>