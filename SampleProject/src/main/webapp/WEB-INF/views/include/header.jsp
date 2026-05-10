<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>KH 웰컴 페이지</title>
  
    <!-- jQuery & Bootstrap 등 기존 head 내용 전체 복사 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
    <script src="//cdn.jsdelivr.net/npm/alertifyjs@1.14.0/build/alertify.min.js"></script>
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.14.0/build/css/alertify.min.css"/>
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.14.0/build/css/themes/bootstrap.min.css"/>
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

    <style>
        /* 기존 style 태그 내용 전체 복사 */
        #mainNav { background-color: #ffffff; box-shadow: 0 2px 4px rgba(0,0,0,.1); }
        #mainNav .navbar-nav .nav-item .nav-link { font-weight: 600; color: #333; }
        header.masthead { text-align: center; color: white; background-image: url('https://www.kh-academy.co.kr/resources/images/main/main_renewal/sub/sub02/educationinfo/jongro/01.jpg'); background-repeat: no-repeat; background-attachment: scroll; background-position: center center; background-size: cover; height: 100vh; display: flex; align-items: center; justify-content: center; position: relative; }
        header.masthead::before { content: ""; position: absolute; top: 0; left: 0; right: 0; bottom: 0; background-color: rgba(0, 0, 0, 0.5); z-index: 1; }
        header.masthead .intro-text { position: relative; z-index: 2; padding-top: 150px; padding-bottom: 100px; }
        #sub-bg { width: 80%; margin: auto; min-height: 1200px; padding-top: 100px; padding-bottom: 60px; }
        #sub-1 { width: 70%; height: 400px; margin-right: auto; background-image: url('https://www.kh-academy.co.kr/resources/images/main/main_renewal/sub/sub02/educationinfo/jongro/04.jpg'); background-size: cover; background-position: center; border-radius: 10px; box-shadow: 0 4px 8px rgba(0,0,0,0.1); }
        #sub-2 { margin-top: 120px; width: 70%; margin-left: auto; height: 400px; background-image: url('https://www.kh-academy.co.kr/resources/images/main/main_renewal/sub/sub02/educationinfo/jongro/05.jpg'); background-size: cover; background-position: center; border-radius: 10px; box-shadow: 0 4px 8px rgba(0,0,0,0.1); }
        footer { border-top: 1px solid #52b1ff28; padding: 25px 0; background-color: #f8f9fa; }
        .dropdown:hover > .dropdown-menu { display: block; }
    </style>
</head>

<body id="page-top">
    <!-- 네비게이션 코드 (<nav id="mainNav"> ... </nav>) 전체 복사 -->
    
    <!-- 로그인 모달 코드 (<div class="modal fade" id="log-in"> ... </div>) 전체 복사 -->