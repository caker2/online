/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.controller;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.model.Heart;
import com.example.service.factory.HeartFactory;

/**
 * Servlet implementation class CartServlet
 */
/*@WebServlet("/CartServlet")*/
public class HeartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
				
    public HeartServlet() {
        super();
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	   
    	int id= (int) request.getSession().getAttribute("id");
		
		int productId= Integer.parseInt(request.getParameter("productId"));
		
		int quantity = 1;
		
		int stockId = HeartFactory.create().getStock(productId);
		
		if(stockId >=quantity) {
			ProductSelection.insertIntoHeart(id,productId,quantity);	
		}
		
		List<Heart> result = new ArrayList<Heart>();
		
		result = HeartFactory.create().getProducts(id);
		
		request.setAttribute("Heart", result);
		
		
		RequestDispatcher rd=request.getRequestDispatcher("/index.jsp");
		rd.forward(request, response);
		 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
