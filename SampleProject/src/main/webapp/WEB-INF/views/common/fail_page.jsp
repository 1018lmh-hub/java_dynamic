<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>요청 처리 실패</title>
    <!-- 공통 CSS (Bootstrap 등 헤더에 포함되어 있다고 가정) -->
    <style>
        .error-container {
            min-height: 60vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            padding: 50px 0;
            margin-top: 100px; /* 고정 헤더 영역 확보 */
        }
        .error-message {
            color: #dc3545; /* Bootstrap text-danger 색상 */
            font-size: 48px;
            font-weight: 700;
            text-align: center;
            margin-bottom: 30px;
        }
    </style>
</head>
<body>

    <!-- 헤더 영역 Include -->
    <jsp:include page="../include/header.jsp" />
    
    <div class="container error-container">
        <!-- 에러 아이콘 (FontAwesome 사용 가정) -->
        <i class="fas fa-exclamation-triangle fa-5x mb-4 text-warning"></i>
        
        <!-- 서버에서 전달받은 에러 메시지 출력 -->
        <h1 class="error-message">${message}</h1>
        
        <p class="text-muted mb-4">요청하신 작업을 처리하는 중 문제가 발생했습니다.</p>
        
        <div>
            <button type="button" class="btn btn-secondary mr-2" onclick="history.back();">이전 페이지로</button>
            <a href="/kh/index.jsp" class="btn btn-primary" style="background-color: #52b1ff; border-color: #52b1ff;">메인으로 이동</a>
        </div>
    </div>

    <!-- 푸터 영역 Include -->
    <jsp:include page="../include/footer.jsp" />

</body>
</html>