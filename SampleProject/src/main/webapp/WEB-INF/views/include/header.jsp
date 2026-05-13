<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="utf-8">

  <title>웹개발 시작하기</title>
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

  <!-- Custom fonts for this template -->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
  <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

  <!-- Custom styles for this template -->
  <link href="resources/css/agency.min.css" rel="stylesheet">
  <script type="text/javascript" src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
  
  <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
  <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
  
  
<!-- JavaScript -->
<script src="//cdn.jsdelivr.net/npm/alertifyjs@1.14.0/build/alertify.min.js"></script>
<!-- CSS -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.14.0/build/css/alertify.min.css"/>
<!-- Default theme -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.14.0/build/css/themes/default.min.css"/>
<!-- Semantic UI theme -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.14.0/build/css/themes/semantic.min.css"/>
<!-- Bootstrap theme -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.14.0/build/css/themes/bootstrap.min.css"/>

<style type="text/css">
  
  /* ==========================================================================
   1. 네비게이션 바 (Header) 및 드롭다운
   ========================================================================== */
#mainNav {
    background-color: #ffffff;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.08);
    padding: 15px 0;
    transition: all 0.3s ease;
}

#mainNav .navbar-nav .nav-item {
    margin-left: 10px;
}

#mainNav .navbar-nav .nav-item .nav-link {
    font-size: 1rem;
    font-weight: 600;
    color: #333333;
    padding: 8px 15px;
    border-radius: 5px;
    transition: background-color 0.3s, color 0.3s;
}

#mainNav .navbar-nav .nav-item .nav-link:hover,
#mainNav .navbar-nav .nav-item .nav-link:focus {
    color: #ffffff;
    background-color: #52b1ff;
}

/* 기존 드롭다운 메뉴 호버 속성 유지 */
.dropdown:hover > .dropdown-menu { 
    display: block;  
}

/* ==========================================================================
   2. 메인 비주얼 영역 (Hero Section)
   ========================================================================== */
header.masthead {
    position: relative;
    text-align: center;
    color: #ffffff;
    background: linear-gradient(135deg, #1e3c72 0%, #2a5298 100%);
    padding-top: 250px;
    padding-bottom: 250px;
}

header.masthead .intro-lead-in {
    font-size: 2rem;
    font-weight: 400;
    margin-bottom: 20px;
}

header.masthead .intro-heading {
    font-size: 4rem;
    font-weight: 700;
    letter-spacing: 1px;
}

/* ==========================================================================
   3. 본문 콘텐츠 컨테이너 및 내부 블록
   ========================================================================== */
#sub-bg {
    width: 85%;
    margin: -100px auto 100px auto; /* 상단 헤더와 영역을 겹치게 배치 */
    padding: 60px 0;
    background-color: #ffffff;
    border-radius: 15px;
    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.1);
    position: relative;
    z-index: 10;
}

#sub-1, #sub-2 {
    width: 80%;
    height: 250px;
    margin: 0 auto 40px auto;
    border-radius: 12px;
    display: flex;
    align-items: center;
    justify-content: center;
    box-shadow: 0 8px 20px rgba(0, 0, 0, 0.05);
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

#sub-1:hover, #sub-2:hover {
    transform: translateY(-5px);
    box-shadow: 0 12px 25px rgba(0, 0, 0, 0.1);
}

#sub-1 {
    background: linear-gradient(135deg, #52b1ff 0%, #3a9dec 100%);
    color: #ffffff;
}

#sub-2 {
    background: linear-gradient(135deg, #f8f9fa 0%, #e9ecef 100%);
    color: #333333;
    border: 1px solid #dee2e6;
}

/* ==========================================================================
   4. 푸터 영역 (Footer)
   ========================================================================== */
footer {
    background-color: #2c3e50;
    color: #ffffff;
    padding: 40px 0;
    border-top: none; 
}

footer .copyright {
    font-size: 0.9rem;
    color: #bdc3c7;
    line-height: 40px;
}

footer .social-buttons .list-inline-item a {
    display: inline-block;
    width: 40px;
    height: 40px;
    border-radius: 50%;
    line-height: 40px;
    text-align: center;
    color: #ffffff;
    background-color: rgba(255, 255, 255, 0.1); /* 아이콘 기본 배경 추가 */
    transition: all 0.3s ease;
}

footer .social-buttons .list-inline-item a:hover {
    transform: scale(1.15);
    background-color: #52b1ff;
}

footer .quicklinks a {
    color: #bdc3c7;
    text-decoration: none;
    font-weight: 600;
    line-height: 40px;
    transition: color 0.3s;
}

footer .quicklinks a:hover {
    color: #52b1ff;
}

/* ==========================================================================
   5. 로그인 모달 (Modal)
   ========================================================================== */
#log-in .modal-content {
    border-radius: 10px;
    border: none;
    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
}

#log-in .modal-header {
    background-color: #f8fbff;
    border-bottom: 1px solid #e9ecef;
    padding: 20px 30px;
    align-items: center;
}

#log-in .modal-title {
    font-weight: 700;
    color: #333333;
    margin: 0;
}

#log-in .modal-title span {
    color: #52b1ff;
}

#log-in .close {
    outline: none;
}

#log-in .modal-body {
    padding: 30px;
}

#log-in .modal-body table {
    width: 100%;
    border-collapse: collapse;
}

#log-in .modal-body td {
    padding: 0;
    text-align: left;
}

#log-in .modal-body p {
    margin-bottom: 8px;
    font-size: 0.95rem;
    color: #495057;
}

#log-in .modal-body td[style*="center"] p,
#log-in .modal-body td[style*="text-align: center"] p {
    margin-top: 15px;
    margin-bottom: 25px;
    text-align: center;
    color: #333333;
}

#log-in .form-control {
    height: 45px;
    border: 1px solid #ced4da;
    border-radius: 5px;
    padding: 10px 15px;
    font-size: 1rem;
    margin-bottom: 20px;
    transition: border-color 0.2s ease-in-out, box-shadow 0.2s ease-in-out;
}

#log-in .form-control:focus {
    border-color: #52b1ff;
    box-shadow: 0 0 0 0.2rem rgba(82, 177, 255, 0.25);
    outline: 0;
}

#signIn-btn {
    background-color: #52b1ff;
    color: #ffffff;
    border: none;
    height: 50px;
    font-size: 1.1rem;
    font-weight: 600;
    border-radius: 5px;
    width: 100%;
    cursor: pointer;
    transition: background-color 0.3s ease, transform 0.2s ease;
}

#signIn-btn:hover {
    background-color: #3a9dec;
    transform: translateY(-2px);
}
</style>



</head>

<body id="page-top">


  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
    <div class="container">
      <a class="navbar-brand" href="http://localhost:8088/sample/">
        <img class="img-fluid" src="" alt="로고없음" style="width:130px; height:50px;" />
      </a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive">
        메뉴
        <i class="fas fa-bars"></i>
      </button>
      
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav text-uppercase ml-auto">
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="http://localhost:8088/sample/">HOME</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#">공지사항</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="http://localhost:8088/sample/boards.do?page=1">게시판</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="">사진게시판</a>
          </li>
          
        <c:choose>
          <c:when test="${ empty userInfo }">
	          <li class="nav-item">
	          <a class="nav-link js-scroll-trigger" data-toggle="modal" data-target="#log-in">로그인</a>
	          </li>
	          <li class="nav-item">
	          <a class="nav-link js-scroll-trigger" href="http://localhost:8088/sample/enroll.do">회원가입</a>
	          </li>
	      </c:when>
	      <c:otherwise>
	         
	          <li class="nav-item">
	          <a class="nav-link js-scroll-trigger" href="http://localhost:8088/sample/mypage.do">내정보</a>
	          </li>
	          <li class="nav-item">
	          <a class="nav-link js-scroll-trigger" onclick="logout();">로그아웃</a>
	          </li>
         	<script>
          		function logout(){
          			location.href = 'http://localhost:8088/sample/logout.do';
          		};	
	       </script>
	          
	     </c:otherwise>
	   </c:choose>
          
        </ul>
      </div>
    </div>
  </nav><br><br><br>
  
  

  <!-- 로그인 Modal-->
<div class="modal fade" id="log-in">
	<div class="modal-dialog">
		<div class="modal-content">

			<!-- Modal Header -->
			<div class="modal-header">
				<h4 class="modal-title">
					<span>Sample</span> 로그인
				</h4>
				<button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>

			<!-- Modal body -->
			<div class="modal-body">

				<form action="http://localhost:8088/sample/login.do" name="sign-in" method="post" id="signInForm">
					<table >
						<tr>
							<td style="text-align: left">
								<p><strong>아이디를 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;<span id="idCheck"></span></p>
							</td>
						</tr>
						<tr>
							<td><input type="text" name="userId" id="signInId"
								class="form-control tooltipstered" maxlength="10"
								required="required" aria-required="true"
								placeholder="최대 15자"></td>
						</tr>
						<tr>
							<td >
								<p><strong>비밀번호를 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;<span id="pwCheck"></span></p>
							</td>
						</tr>
						<tr>
							<td><input type="password" size="17" maxlength="20" id="signInPw"
								name="userPwd" class="form-control tooltipstered" 
								maxlength="20" required="required" aria-required="true"
								placeholder="최소 8자"></td>
						</tr>
						<tr>
							<td >
								<p><strong>로그인하셔서 서비스를 이용해보세요~~!</strong></p>
							</td>
						</tr>
						<tr>
							<td ><input
								type="submit" value="로그인" class="btn form-control tooltipstered" id="signIn-btn">
							</td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</div>
</div>


</body>
</html>