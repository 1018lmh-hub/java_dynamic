package com.kh.web.board.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.web.board.model.dto.BoardDto;
import com.kh.web.board.model.service.BoardService;
import com.kh.web.common.model.dto.PageInfo;


@WebServlet("/boards.do")
public class BoardListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public BoardListController() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// - 페이징 처리 -
		
		//필요한 변수들 세팅
		
		int listCount; // 현재 게시판의 총 게시글 개수
		//=> WEB_BOARD 테이블에서 COUNT(*) (STATUS='N') 조회
		int currentPage; //현재 사용자가 요청한 페이지
		// = request.getparameter("page")로 뽑아서 씀 
		int pageLimit;//페이지 하단에 버튼을 몇 개 보여줄 것인지 => 5개
		int boardLimit; // 한페이지에 보여질 게시글의 최대 개수 => 3개
		
		int maxPage; // 가장 마지막 페이지(총 페이지의 개수)
		int startPage; //페이지 하단에 보여질 페이징바의 시작 값
		int endPage; //페이지 하단에 보여질 페이징바의 끝 값
		
		listCount = new BoardService().selectBoardCount();
//		System.out.println(listCount); 
		currentPage = Integer.parseInt(request.getParameter("page"));
		
		pageLimit = 5;
		boardLimit = 4;
		// * maxPage : 가장 마지막 페이지가 몇 번 페이지인지
		/*
		 * listCount, boardLimit 에 영향을 받음
		 * 
		 * - 공식을 생각해보자 => boardLimit이 10이라고 가정
		 * 
		 * 총 개수 	한페이지    	나눗셈 결과		마지막 페이지
		 * 100 	 /	 10		=	  10		    10
		 * 107   /   10     =     10.7          11
		 * 113   /   10     =     11.3          12
		 * 
		 * => 나눗셈의 결과를 올림처리하면 maxPage가 나오는구나
		 * 
		 * 차근차근
		 * 1. listCount 를 double로 변환
		 * 2. listCount / boardLimit
		 * 3. math.ceil()
		 * 4. (int)
		 */
		
//		maxPage = (int)Math.ceil((double)listCount/boardLimit);
		
		if(listCount % boardLimit != 0) {
			maxPage = (int)(listCount/boardLimit + 1);
		} else { 
			maxPage = (int)(listCount/boardLimit); }
		
		/*
		 * startPage : 페이지 하단에 보여질 페이징 버튼 중 시작 값
		 * 
		 * pageLimit, currentPage 에 영향을 받음
		 * 
		 * -공식 구하기
		 * 단, pageLimit이 10이라고 가정
		 * 
		 * startPage: 1, 11, 21, 31 ... => n*10 +1 
		 * 
		 * 우리는 pageLimit 이 5 이니께
		 * 
		 * startPage : 1, 6, 11, 16 ... => n*5 +1
		 * 
		 * 즉, startPage == n * pageLimit + 1
		 * 
		 * currentPage 		startPage
		 *      1				1
		 *      5				1
		 *      10				1
		 *      11				11
		 *      17				11
		 *      20				11
		 *      21				21
		 *      30				21
		 *      
		 *  1~10 / 10 =>  0~1
		 *  11~20 / 10 =>  1~2
		 *  21~30 / 10 =>  2~3
		 *  
		 *  ((1~10) - 1) / 10 =>  0
		 *  ((11~20) - 1) / 10 =>  1
		 *  ((21~30) - 1) / 10 =>  2
		 *  
		 *  n = (currentPage- 1) / pageLimit
		 *  
		 *  startPage = (currentPage- 1) / pageLimit * pageLimit + 1;
		 *  
		 * 
		 */
		
		startPage = (currentPage- 1) / pageLimit * pageLimit + 1;
		
		// * endPage : 페이지 하단에 보여질 페이징 버튼의 끝 수
		
		/*
		 * startPage, pageLimit 에 영향을 받음
		 * (maxPage도 영향을 끼침)
		 * 
		 * -공식을 생각해보자
		 * 단, pageLimit 이 10이라는 가정
		 * 
		 * startPage : 1 => endPage : 10
		 * startPage : 21 => endPage : 30
		 * 
		 * endPage = startPage + pageLimit -1;
		 * 
		 */
		
		endPage = startPage + pageLimit -1;
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		int offset = (currentPage - 1) * boardLimit;
		

		PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, boardLimit,
								   startPage, endPage, maxPage, offset);
		
//		System.out.println(pi);
		
		List<BoardDto> boards = new BoardService().selectBoardList(pi);
		
//		System.out.println(boards);
		
		request.setAttribute("pi", pi);
		request.setAttribute("boards", boards);
		
		
		
		
		request.getRequestDispatcher("/WEB-INF/views/board/boards.jsp").forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
