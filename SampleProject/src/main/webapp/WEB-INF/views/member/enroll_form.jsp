<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
	#hobby-wrap{
	    display: flex;
	    justify-content: center;
	    flex-direction: row;
	    flex-wrap: nowrap;
	    align-items: baseline;
	}
	input[type=checkbox]{
		margin-left : 50px;
	}
	/* 폼 컨테이너 중앙 정렬 및 그림자 효과 */
form[name="signup"], #insert-form {
    background-color: #ffffff;
    padding: 40px;
    border-radius: 10px;
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.05);
    border: 1px solid #eaeaea;
}

/* 입력창 선택(Focus) 시 테두리 색상 변경 및 효과 */
.form-control:focus {
    border-color: #52b1ff;
    box-shadow: 0 0 0 0.2rem rgba(82, 177, 255, 0.25);
}

/* 버튼 마우스 오버 효과 */
.btn {
    transition: all 0.3s ease;
    border-radius: 5px;
}
.btn:hover {
    transform: translateY(-2px);
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

/* 모달 창 디자인 개선 */
.modal-content {
    border-radius: 10px;
    border: none;
    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
}
.modal-header {
    border-bottom: 2px solid #f1f1f1;
}
</style>
</head>
<body>

	<jsp:include page="../include/header.jsp" />
	
	
	<div style="width : 80%; margin : auto; padding : 50px;">
		<form action="http://localhost:8088/sample/join.do" name="signup" id="signUpForm" method="post"
						style="margin-bottom: 0;">
			<table
				style="cellpadding: 0; cellspacing: 0; margin: 0 auto; width: 100%">
				<tr>
					<td style="text-align: left">
						<p><strong>아이디를 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;<span id="idChk"></span></p>
					</td>							
				</tr>
				<tr>
					<td><input type="text" name="userId" id="user_id"
						class="form-control tooltipstered" maxlength="14"
						required="required" aria-required="true"
						style="margin-bottom: 25px; width: 100%; height: 40px; border: 1px solid #d9d9de"
						placeholder="숫자와 영어로 4-30자">
						</td>
					
				</tr>
				<tr>
					<td style="text-align: left">
						<p><strong>비밀번호를 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;<span id="pwChk"></span></p>
					</td>
				</tr>
				<tr>
					<td><input type="password" size="17" maxlength="30" id="password"
						name="userPwd" class="form-control tooltipstered" 
						maxlength="20" required="required" aria-required="true"
						style="ime-mode: inactive; margin-bottom: 25px; height: 40px; border: 1px solid #d9d9de"
						placeholder="영문과 특수문자를 포함한 최소 8자"></td>
				</tr>
				<tr>
					<td style="text-align: left">
						<p><strong>비밀번호를 재확인해주세요.</strong>&nbsp;&nbsp;&nbsp;<span id="pwChk2"></span></p>
					</td>
				</tr>
				<tr>
					<td><input type="password" size="17" maxlength="20" id="password_check"
						name="" class="form-control tooltipstered" 
						maxlength="20" required="required" aria-required="true"
						style="ime-mode: inactive; margin-bottom: 25px; height: 40px; border: 1px solid #d9d9de"
						placeholder="비밀번호가 일치해야합니다."></td>
				</tr>
	
				<tr>
					<td style="text-align: left">
						<p><strong>이름을 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;<span id="nameChk"></span></p>
					</td>
				</tr>
				<tr>
					<td><input type="text" name="userName" id="user_name"
						class="form-control tooltipstered" maxlength="6"
						required="required" aria-required="true"
						style="margin-bottom: 25px; width: 100%; height: 40px; border: 1px solid #d9d9de"
						placeholder="한글로 최대 6자"></td>
				</tr>
				
				<tr>
					<td style="text-align: left">
						<p><strong>이메일을 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;<span id="emailChk"></span></p>
					</td>
				</tr>
				<tr>
					<td><input type="email" name="email" id="user_email"
						class="form-control tooltipstered" 
						required="required" aria-required="true"
						style="margin-bottom: 25px; width: 100%; height: 40px; border: 1px solid #d9d9de"
						placeholder="ex) sample@sample.com"></td>
				</tr>
	
				<tr>
					<td style="padding-top: 10px; text-align: center">
						<p><strong>회원가입하셔서 Sample 서비스를 이용해보세요.</strong></p>
					</td>
				</tr>
				<tr>
					<td style="width: 100%; text-align: center; colspan: 2;"><input
						type="submit" value="회원가입" 
						class="btn form-control tooltipstered" id="signup-btn"
						style="background-color: #52b1ff; margin-top: 0; height: 40px; color: white; border: 0px solid #388E3C; opacity: 0.8">
					</td>
				</tr>
			</table>
		</form>
	</div>
	
	<jsp:include page="../include/footer.jsp" />
 
</body>
</html>