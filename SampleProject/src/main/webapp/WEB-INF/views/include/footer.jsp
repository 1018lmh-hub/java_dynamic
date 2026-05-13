<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
   <!DOCTYPE html>
<html lang="ko">
<head>
<style type="text/css">
/* 푸터 기본 설정 */
footer {
    background-color: #2c3e50; /* 시선의 분산을 막는 어두운 무채색 계열 배경 */
    color: #ffffff;
    padding: 40px 0;
    border-top: none; 
}

/* 저작권 텍스트 */
footer .copyright {
    font-size: 0.9rem;
    color: #bdc3c7;
    line-height: 40px; /* 아이콘과 수직 정렬을 맞추기 위한 줄 간격 */
}

/* 소셜 미디어 버튼 그룹 */
footer .social-buttons .list-inline-item a {
    display: inline-block;
    width: 40px;
    height: 40px;
    border-radius: 50%; /* 사각형 요소를 원형으로 변환 */
    line-height: 40px;
    text-align: center;
    color: #ffffff;
    transition: all 0.3s ease;
}

/* 소셜 미디어 버튼 마우스 오버 효과 */
footer .social-buttons .list-inline-item a:hover {
    transform: scale(1.15); /* 면적 15% 확대 */
    filter: brightness(1.2); /* 배경색 밝기 증가 */
}

/* 퀵 링크(우측 공식사이트 등) 텍스트 */
footer .quicklinks a {
    color: #bdc3c7;
    text-decoration: none; /* 밑줄 제거 */
    font-weight: 600;
    line-height: 40px;
    transition: color 0.3s;
}

/* 퀵 링크 마우스 오버 효과 */
footer .quicklinks a:hover {
    color: #52b1ff; /* 사이트 메인 테마 색상으로 전환 */
}

</style>


</head>

<body id="page-top">

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                <span class="copyright">Copyright &copy; By Sample Project 2026</span>
                </div>
                <div class="col-md-4">
                <ul class="list-inline social-buttons">
                    <li class="list-inline-item">
                    <a href="#" style="background-color: #52b1ff41;">
                        <i class="fab fa-twitter"></i>
                    </a>
                    </li>
                    <li class="list-inline-item">
                    <a href="#" style="background-color: #52b1ff96;">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                    </li>
                    <li class="list-inline-item">
                    <a href="#" style="background-color: #52b1ff;">
                        <i class="fab fa-linkedin-in"></i>
                    </a>
                    </li>
                </ul>
                </div>
                <div class="col-md-4">
                <ul class="list-inline quicklinks">
                    <li class="list-inline-item">
                    <a href="#">Sample 프로젝트 공식사이트</a>
                    </li>
                    
                </ul>
                </div>
            </div>
        </div>
    </footer>
  
</body>

<script>
    AOS.init();
</script>

</html>