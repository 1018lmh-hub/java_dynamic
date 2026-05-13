<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>게시물 상세 보기</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
<style>
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
<br/><br/>

	<jsp:include page="../include/header.jsp" />
	
	<div class="outer">
		<div class="container">
		
		<div class="row">
		  <div class="offset-lg-2 col-lg-8">
		    <div class="card">
		      <div class="card-header text-white" style="background-color: #52b1ff;">게시물 상세 내용</div>
		      <div class="card-body"> 
		        
		          <div class="form-group">
		            <label>작성자</label>
		            <input type="text" class="form-control" name='writer' value="SampleUser" readonly>
		          </div>
		          
		          <div class="form-group">
		            <label>제목</label>
		            <input type="text" class="form-control" name='title' value="Sample 게시물 제목입니다." readonly>
		          </div>
		
		          <div class="form-group">
		            <label>내용</label>
		            <textarea class="form-control" rows="5" name='content' readonly style="resize:none;">Sample 게시물 내용입니다.</textarea>
		          </div>
		
		          <div class="form-group">
		            <label>첨부파일</label>

			            	&nbsp;&nbsp;<span>첨부파일이 존재하지 않습니다.</span>
		          </div>
		          
		          <a class="btn" href=""
		             style="background-color: #52b1ff; height: 40px; color: white; border: 0px solid #388E3C; opacity: 0.8"
		          >목록</a>&nbsp;&nbsp;
		          
		          
		          
			          <a 
			            class="btn" 
			            href=""
			      		style="background-color: orange; height: 40px; color: white; border: 0px solid #388E3C; opacity: 0.8"
			      		>수정</a>&nbsp;&nbsp;
			          
			          <a 
			            class="btn" 
			            href="" 
			      		style="background-color: red; height: 40px; color: white; border: 0px solid #388E3C; opacity: 0.8"
			      		>삭제</a>&nbsp;&nbsp;
		      </div>
		    </div>
		  </div>
		</div>
		</div>
		<div id="reply-area">
			
			<table class="form-group" align="center">
				<thead>
					<tr>
						<th>댓글작성</th>
						
							
							<td>
								<textarea readonly cols="50" rows="3" style="resize:none;" class="form-control">로그인 후 이용가능한 서비스입니다.</textarea>
							</td>
							<td><button class="btn" style="width : 100%; height : 100%; background-color: #52b1ff; color : white;">댓글등록</button></td>

					</tr>
				</thead>
				<tbody>
				
				</tbody>
			</table>
			<br><br><br><br>
	    </div>

	</div>
	
	<jsp:include page="../include/footer.jsp" />
	
</body>
</html>