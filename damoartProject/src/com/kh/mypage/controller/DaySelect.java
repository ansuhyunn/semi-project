package com.kh.mypage.controller;

import javax.servlet.annotation.WebServlet;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.member.model.vo.Member;

import java.io.IOException;


@WebServlet("/up")
public class DaySelect  extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public DaySelect() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		HttpSession session = request.getSession();
String date="";
	
String a = request.getRequestURI();
		System.out.println(a);

		request.getRequestDispatcher("views/mypage/refundDetail.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */



}
