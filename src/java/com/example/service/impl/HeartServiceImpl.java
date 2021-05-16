/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.service.impl;

import com.example.controller.DBConnection;
import com.example.model.Heart;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.example.service.HeartService;
/**
 *
 * @author Ole
 */
public class HeartServiceImpl implements HeartService {
    
    @Override
	public int getStock(int productId) {
		
		int stockId = 0;
		Connection connection = DBConnection.getConnection();
			    		
		String sql="select stock from product where product_id= ?";
		
		try {
			
			PreparedStatement pstmt = connection.prepareStatement(sql);
			pstmt.setInt(1, productId);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()){
				stockId = rs.getInt("stock");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
	    	try {
	    		connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
	    }
		
		return stockId;
		
	}
	

	@Override
	public List<Heart> getProducts(int userId) {
		
		String query = "select heart.product_id,product_name,quantity,heart.price,img from heart inner join product on heart.product_id = product.product_id where uid=?";
		List<Heart> carts = new ArrayList<Heart>();
		Connection connection = DBConnection.getConnection();
		try {
				PreparedStatement pstmt = connection.prepareStatement(query);
				pstmt.setInt(1, userId);
				ResultSet rs=pstmt.executeQuery();
				
				while(rs.next())
				{
					Heart cart = new Heart();
					
					cart.setProductId(rs.getInt("product_id"));
					cart.setProductName(rs.getString("product_name"));
					cart.setQuantity(rs.getInt("quantity"));
					cart.setPrice(rs.getInt("price"));
					cart.setImg(rs.getString("img"));
					carts.add(cart);
				}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally
		{
			try {
				connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return carts;
	}


	@Override
	public int getTotal(int userId) {
		
			int totalprice=0;
			
			String query="select price from heart where uid= ? ";
			
			Connection connection =DBConnection.getConnection();
			
			try {
					
					PreparedStatement pstmt= connection.prepareStatement(query);
					pstmt.setInt(1, userId);
					ResultSet rs= pstmt.executeQuery();
					
					while(rs.next())
					{
						totalprice=totalprice+rs.getInt("price");
					}
				
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
			
		return totalprice;
	}

		
	}

	
