<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>

header.masthead {
    display: none;
}   
.row{
	height : 800px;
}
tr:hover{
	cursor : pointer;
}
/* 컨테이너 상하 여백 확보 */
.panel-body {
    padding: 30px;
    background: #fff;
    border-radius: 10px;
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.05);
}

/* 테이블 헤더 텍스트 중앙 정렬 및 굵기 설정 */
.table thead th {
    text-align: center;
    font-weight: 600;
    vertical-align: middle;
}

/* 테이블 본문 텍스트 중앙 정렬 (제목 제외) */
.table tbody td {
    text-align: center;
    vertical-align: middle;
}
.table tbody td:nth-child(3) {
    text-align: left; /* 제목은 좌측 정렬 */
}

/* 테이블 행 마우스 오버 효과 강화 */
.table-hover tbody tr:hover {
    background-color: #f4faff;
    transition: background-color 0.2s ease;
}

/* 페이징 버튼 디자인 */
.paging-area button {
    margin: 0 3px;
    border-radius: 5px;
    transition: all 0.2s;
}
.paging-area button:hover {
    background-color: #52b1ff;
    color: white !important;
}

/* 검색 영역 정렬 */
#search-area form {
    display: flex;
    justify-content: center;
    gap: 10px;
    margin-top: 20px;
}
#search-area select {
    width: 150px;
}
#search-area button {
    width: 100px;
}

</style>


<br/><br/> 
 
   <jsp:include page="../include/header.jsp"/>

   <!-- Begin Page Content -->
   <div class="container">
      <div class="row">
         <div class="col-lg-1">
         </div>
         <div class="col-lg-10">
            <div class="panel-body">
            <h2 class="page-header"><span style="color: #52b1ff;">Sample</span> 자유 게시판
               <a href="" class="btn float-right" style="background-color: #52b1ff; margin-top: 0; height: 40px; color: white; border: 0px solid #f78f24; opacity: 0.8">글쓰기</a>
            </h2>
               <table class="table table-bordered table-hover">
                  <thead>
                  <tr style="background-color: #52b1ff; margin-top: 0; height: 40px; color: white; border: 0px solid #f78f24; opacity: 0.8">
                     <th width="100">번호</th>
                     <th width="150">작성자</th>
                     <th width="450">제목</th>
                     <th width="200">작성일</th>
                     <th width="100">조회수</th>
                  </tr>
                  </thead>
                  <tbody>
            
                    <tr style="color: #52b1ff;"
                        class="board"
                        id="1">
                        <td>
                        1
                        </td>
                        <td>
                        홍길동
                        </td>
                        <td style="color: #52d6ffcc;">
                        제목쓰 ㅎ &nbsp;
                        </td>
                        <td>
                        2026-05-06
                        </td>
                        <td>
                        0
                        </td>
                    </tr>   
 
                    
        
                  </tbody>
                  
               </table> 
               <div id="search-area" class="form-group">
				<form action="" method="get">
					<select name="condition" class="form-control">
						<option value="writer">작성자</option>
						<option value="content">내용</option>
						<option value="title">제목</option>
					</select>
					<button type="submit" class="btn btn-block" style="background:#52b1ff; color:white">검색</button>
				</form>
		     </div>              
            </div>
                    
            
         <div class="paging-area" align="center" >
        	
        	
        
        	   
                <button 
                class="btn btn-outline-primary" style="color:#52b1ff;"
                onclick="">1</button>
        	   
                <button 
                class="btn btn-outline-primary" style="color:#52b1ff;"
                onclick="">1</button>
        	   
                <button 
                class="btn btn-outline-primary" style="color:#52b1ff;"
                onclick="">2</button>
        	   
                <button 
                class="btn btn-outline-primary" style="color:#52b1ff;"
                onclick="">3</button>
        	   
                <button 
                class="btn btn-outline-primary" style="color:#52b1ff;"
                onclick="">4</button>
        	   
                <button 
                class="btn btn-outline-primary" style="color:#52b1ff;"
                onclick="">5</button>

	        		
	        			
        	
        </div>
         </div>
      </div>
      
      
      
      
   </div>
   
     
     
   <jsp:include page="../include/footer.jsp"/>