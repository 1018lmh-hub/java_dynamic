<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style type="text/css">
/* 메인 콘텐츠 배경 컨테이너 */
#sub-bg {
    width: 80%;
    margin: 0 auto;
    padding: 60px;
    background-color: #f8fbff; /* 기존 흰색 배경과 구분되는 연한 푸른빛 배경 */
    border-radius: 20px;
    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.05); /* 컨테이너 전체에 얕은 그림자 적용 */
    margin-top: 100px; /* 기존 300px의 넓은 여백을 시각적으로 안정적인 수치로 조정 */
    margin-bottom: 100px;
}

/* 개별 콘텐츠 블록 (sub-1, sub-2) */
#sub-1, #sub-2 {
    border-radius: 15px; /* 모서리 곡률 적용 */
    box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1); /* 개별 요소 입체감 부여 */
    transition: transform 0.4s ease, box-shadow 0.4s ease; /* 호버 시 전환 시간 및 타이밍 함수 설정 */
    position: relative;
    overflow: hidden;
}

/* 콘텐츠 블록 마우스 오버 효과 */
#sub-1:hover, #sub-2:hover {
    transform: translateY(-10px); /* 마우스가 올라가면 Y축 기준으로 10px 상승 */
    box-shadow: 0 15px 30px rgba(0, 0, 0, 0.15); /* 부유하는 느낌을 위해 그림자 확장 */
}
</style>
<body id="page-top">

    <!-- Header -->
    <header class="masthead">
      <div class="container">
        <div class="intro-text">
          <!-- 샘플 텍스트 추가 -->
          <div class="intro-lead-in">Welcome To Our Studio!</div>
          <div class="intro-heading text-uppercase">It's Nice To Meet You</div>
        </div>
      </div>
    </header>
  
    <div id="sub-bg">
      <div id="sub-1" data-aos="fade-right">
          <!-- 상단 스타일(CSS) 영역에서 설정한 placeholder 이미지가 배경으로 표시되는 영역입니다. -->
      </div>
      <div id="sub-2" data-aos="fade-left">
          <!-- 상단 스타일(CSS) 영역에서 설정한 placeholder 이미지가 배경으로 표시되는 영역입니다. -->
      </div>
    </div>
    
</body>