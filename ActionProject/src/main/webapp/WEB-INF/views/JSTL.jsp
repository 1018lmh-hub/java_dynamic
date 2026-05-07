<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h4>JSTL Core Library</h4>
	
	<p>
		JSP상에서 조건문 반복문 등의 로직과 관련된 태그들을 제공함
	</p>
	
	<h5>속성 추가하기 (Attribute 추가)</h5>
	
	<pre>
		활용빈도 낮음
		
		&lt; c:set var="키값" value="리터럴값" scope="스코프(생략가능)"/>
		-scope에 새로운 Attribute를 추가하는 태그
		-scope 속성 생략 시 pageScope에 담김
	</pre>
	
	<c:set var="num1" value="10"/>
	<c:set var="num2" value="20" scope="request"/>
	<%--request.setAttrubute("num1","10" --%>
	<c:set var="result" value="${ num1 + num2 }" scope="session"/>
	
	set태그로 선언한 Attribute는 EL구문을 이용해서 출력
	<br>
	num1dml rkqt : ${num1 }<br>
	num1dml rkqt : ${num2 }<br>
	num1dml rkqt : ${result}<br>
	
	<c:set var="result" scope="request">9999</c:set>
	<!-- value속성을 명시하지 않고 컨텐트 영역에 대입할 값을 기술할 수 있음 -->
	
	<pre>
		활용빈도 중간
		
		*속성 삭제(&lt;c:remove var="제거하고자하는 속성" scope="스코프영역(생략가능)/>)
		
		- 해당 Attribute를 Scope영역에서 제거하는 태그
		- scope속성을 작성하지 않으면 모든 스코프 에서 해당 Attribute를 싹 다 제거함 
		
		
	</pre>
	
	
	삭제 전 result : ${result } <br>
	
	<hr>
	
	오케이 ~ requestScope에서 result 속성을 삭제
	
	<c:remove var="result" scope="request"/>
	삭제 후 result : ${result } <br>
	
	<hr>
	
	<pre>
		활용빈도 : 낮은데 진짜 살다가 필요할 때가 생김
		
		*출력(&lt; c:out value="출력할 값" default="기본값" escapeXml="t/f"/>)
		-속성응 ㄹ 출력하려고 할 때 사용하는 태그
	</pre>
	
	num1 : <c:out value="${num1 }" /> <br>
	num1 : ${num1 }
	<br>
	
	requestScope result : ${requestScope.result } <br>
	out태그 사용 : <c:out value="${ requestScope.result }" default="값이 존재하지 않음"/>
	
	<c:set var="strong" value="<strong>강한정보</strong>"/>
	
	${ strong }
	<c:out value="${ strong }"/>
	
	<hr>
	
	<h3>조건문</h3>
	
	<pre>
		활용빈도 : 높음
		
		&lt; c:if test="조건식">
			조건식이 true일 경우 출력할 내용
		&lt; /c:if>
		
		-조건식을 작성할 때는 반드시 EL구문으로 작성
	</pre>
	
	<c:if test="${ num1 lt num2}">
		<strong>num1이 num2보다 작습니다.</strong><br>
	</c:if>
	
	<% if((int)pageContext.getAttribute("num1") > (int)request.getAttribute("num1")){%>
	<% }%>
	
	<h3>choose, when, otherwise</h3>
	
	<pre>
		활용빈도 :  매우 높음
		
		&lt; c:choose>
			&lt; c:when test="조건1">
				출력할내용1
			&lt;/c:when>
			&lt; c:when test="조건2">
				출력할내용2
			&lt;/c:when>
			&lt; c:otherwise>
				출력할내용4
			&lt;/c:otherwise>
		&lt;/ c:choose>	
	</pre>
	
	<c:set var="point" value="400"/>
	
	회원 등급 출력 :
	<c:choose>
		<c:when test="${ point le 100 }">
			일반화원
		</c:when>
		<c:when test="${ point le 300 }">
			우수화원
		</c:when>
		<c:otherwise>
			최우수회원
		</c:otherwise>
	</c:choose>
	
	<!-- choose구문 안에 when/otherwise말고 다른 어떤 무언가가 들어가서는 안됨! 
		주석도 들어가면 안됨 자바로 변환해서 시행해서? 500에러뜸 그러면 // 쓰면 되나 -->
		
	<h3>반복문</h3>
	
	<% for(int i = 0 ; i < 10; i++){%>
		<%=i %>
	<%} %>
	
	<pre>
		활용빈도 : 매우 높음
		
		for loop문
		&lt;c:forEach var="속성명" begin="초기값" end="끝값" step="증가치">
			반복시킬 내용
		&lt;/c:forEach>
		
		step은 생략 시 기본값==1
		
		향상된 for문
		&lt;c:forEach var="속성명" items="순차적으로요소에 접근할 배열 / 컬렉션" varStatus="상태값">
			반복시킬내용
		&lt;/c:forEach>
		
		var로 선언된 제어변수의 경우 반드시 EL구문으로 접근해야함!
	</pre>

	<c:forEach var="i" begin="0" end="9">
		${ i }
	</c:forEach>

<br>
	<c:forEach var="i" begin="0" end="6">
		<h${ i }>이것도 됨</h${ i }>
	</c:forEach>
	
	<c:set var="colors">
		red, orangered, orange, yellow
	</c:set>
	
	colors: ${ colors }
	
	<br>
	
	<ul>
		<c:forEach var="c" items="${ colors }">
			<li style/>
		</c:forEach>
	</ul>
	
	
	
	
	
	
	
	
	
	<table border="1">
		<thead>
			<tr>
				<th>순번</th>
				<th>이름</th>
				<th>나이</th>
				<th>주소</th>
			</tr>
		</thead>
		<tbody>
			<c:choose>
				<c:when test="${ empty persons }">
					<tr>
						<th colspan="4">조회결과가 존재하지 않습니다.</th>
					</tr>
				</c:when>
				<c:otherwise>
					<c:forEach var="p" items="${persons }" varStatus="s">
						<tr>
							<td>${s.count }</td> <!-- index => 0부터, count=> 1부터 -->
							<td>${p.name }</td>
							<td>${p.age}</td>
							<td>${p.address}</td>
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</tbody>
		<tfoot>
			<tr>
				<th colspan="3">총합</th>
				<th>${persons.size() } 명</th>
			</tr>
		</tfoot>
	</table>
	
	<h5>forTokens</h5>
	
	<c:set var="device" value="컴퓨터, 핸드폰, TV/에어컨, 냉장고-세탁기"/>
	
	<ul>
		<c:forTokens var="d" items="${ device }" delims=",./-">
			<li>${ d }</li>
		</c:forTokens>
	</ul>
</body>
</html>