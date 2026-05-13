<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 작성</title>
<style>
	form {
		width : 90%;
		margin : auto;
	}
</style>
<style type="text/css">
    /* 카드 컨테이너 디자인 */
    .card {
        border: none;
        border-radius: 10px;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.08);
        overflow: hidden;
        margin-bottom: 30px;
    }
    
    .card-header {
        font-weight: 600;
        font-size: 1.1rem;
        border-bottom: none;
    }

    /* 버튼 여백 및 정렬 */
    .card-body .btn {
        margin-top: 15px;
        border-radius: 5px;
        transition: transform 0.2s, box-shadow 0.2s;
    }
    .card-body .btn:hover {
        transform: translateY(-2px);
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.15);
    }

    /* 댓글 영역 테이블 디자인 */
    #reply-area table {
        width: 100%;
        max-width: 800px;
        background-color: #f8f9fa;
        padding: 20px;
        border-radius: 10px;
        border: 1px solid #e9ecef;
    }
    
    #reply-area th {
        width: 15%;
        text-align: center;
        vertical-align: middle;
    }
    
    #reply-area td {
        padding: 10px;
    }

    /* 텍스트 에어리어 포커스 효과 */
    textarea:focus {
        border-color: #52b1ff;
        box-shadow: 0 0 0 0.2rem rgba(82, 177, 255, 0.25);
        outline: none;
    }
</style>

</head>
<body>
	<jsp:include page="../include/header.jsp" />
	
	<div class="outer">

        <h2 align="center">게시글 작성하기</h2>
        <br><br> 
		
        <form action="" method="post" id="insert-form">

            <div class="form-group">
                <label for="usr">제목</label>
                <input type="text" class="form-control" id="usr" name="">
            </div>

            <div class="form-group">
                <label for="comment">내용</label>
                <textarea class="form-control" name="" rows="15" id="comment" style="resize:none;"></textarea>
            </div>
            
            <div class="form-group">
            	<input type="file" name="upfile">
            </div>

            <div align="center">
                <button type="submit" class="btn btn-sm btn-info">등록하기</button>
                <button type="button" class="btn btn-sm btn-secondary" onclick="">뒤로가기</button>
            </div>

        </form>
        
    </div>
    
    <jsp:include page="../include/footer.jsp" />

</body>
</html>