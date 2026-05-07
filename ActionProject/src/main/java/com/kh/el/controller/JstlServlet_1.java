package com.kh.el.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.el.controller.model.dto.Person;


@WebServlet("/jstl.do")
public class JstlServlet_1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public JstlServlet_1() {
        super();
       
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		//DB갔다온척 -> SELECT
		List<Person> persons=new ArrayList();
		persons.add(new Person("홍길동", 15, "한양"));
		persons.add(new Person("홍길동", 15, "한양"));
		persons.add(new Person("홍길동", 15, "한양"));
		//List가 응답으로 옴
		
		request.setAttribute("persons", persons);
		request.getRequestDispatcher("/WEB-INF/views/JSTL.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
