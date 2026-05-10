<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>KH 회원가입</title>
    <style>
        .signup-container {
            max-width: 600px;
            margin: 0 auto;
            padding: 60px 20px;
            margin-top: 80px; /* 고정 헤더 영역 확보 */
        }
        .signup-title {
            text-align: center;
            margin-bottom: 40px;
            font-weight: 700;
        }
        .signup-title span {
            color: #52b1ff;
        }
        .validation-msg {
            font-size: 0.85rem;
            color: #dc3545;
            margin-left: 10px;
        }
        .btn-signup {
            background-color: #52b1ff;
            color: white;
            height: 50px;
            font-weight: bold;
            font-size: 1.1rem;
        }
        .btn-signup:hover {
            background-color: #3b9deb;
            color: white;
        }
    </style>
</head>
<body>

    <!-- 헤더 영역 Include -->
    <jsp:include page="../include/header.jsp" />
    
    <div class="container signup-container">
        <h2 class="signup-title"><span>KH</span> 회원가입</h2>
        
        <form action="/kh/join.do" name="signup" id="signUpForm" method="post">
            
            <!-- 아이디 입력 -->
            <div class="form-group">
                <label for="user_id"><strong>아이디를 입력해주세요.</strong> <span id="idChk" class="validation-msg"></span></label>
                <input type="text" name="userId" id="user_id" class="form-control" maxlength="14" required 
                       placeholder="숫자와 영어로 4-30자">
            </div>

            <!-- 비밀번호 입력 -->
            <div class="form-group">
                <label for="password"><strong>비밀번호를 입력해주세요.</strong> <span id="pwChk" class="validation-msg"></span></label>
                <input type="password" name="userPwd" id="password" class="form-control" maxlength="30" required 
                       placeholder="영문과 특수문자를 포함한 최소 8자">
            </div>

            <!-- 비밀번호 재확인 -->
            <div class="form-group">
                <label for="password_check"><strong>비밀번호를 재확인해주세요.</strong> <span id="pwChk2" class="validation-msg"></span></label>
                <input type="password" name="" id="password_check" class="form-control" maxlength="20" required 
                       placeholder="비밀번호가 일치해야합니다.">
            </div>

            <!-- 이름 입력 -->
            <div class="form-group">
                <label for="user_name"><strong>이름을 입력해주세요.</strong> <span id="nameChk" class="validation-msg"></span></label>
                <input type="text" name="userName" id="user_name" class="form-control" maxlength="6" required 
                       placeholder="한글로 최대 6자">
            </div>
            
            <!-- 이메일 입력 -->
            <div class="form-group">
                <label for="user_email"><strong>이메일을 입력해주세요.</strong> <span id="emailChk" class="validation-msg"></span></label>
                <input type="email" name="email" id="user_email" class="form-control" required 
                       placeholder="ex) kh@kh.com">
            </div>

            <!-- 가입 버튼 -->
            <div class="text-center mt-5">
                <p class="mb-3"><strong>회원가입하셔서 KH 수강생이 되어보세요~~!</strong></p>
                <button type="submit" id="signup-btn" class="btn btn-signup btn-block">회원가입</button>
            </div>
            
        </form>
    </div>
    
    <!-- 푸터 영역 Include -->
    <jsp:include page="../include/footer.jsp" />
 
</body>
</html>