package com.example.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import com.example.model.Cart;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
public class DBConnection {
ArrayList<Cart> list = new ArrayList();
Connection connection;
	public static Connection getConnection() {
		ArrayList<Cart> list = new ArrayList();
		Connection connection = null; 
		try {
			String url="jdbc:mysql://localhost:3306/shopping_cart?zeroDateTimeBehavior=convertToNull&serverTimezone=UTC";
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(url, "root", "root");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return connection;
	}
        private void dbClose() {
		try {
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
        }

	public ArrayList<Cart> fetch() throws SQLException {
		getConnection();
		String sql = "Select * from cart";
		PreparedStatement st = connection.prepareStatement(sql);
		ResultSet rs = st.executeQuery();
		while(rs.next()) {
			int id=rs.getInt("cart_id");
			int uid= rs.getInt("uid");
			int prod_id= rs.getInt("product_id");
                        String name=rs.getString("product_name");
                        int quantity= rs.getInt("quantity");
			int price= rs.getInt("price");
			
			Cart p = new Cart();
			p.setCartId(id);
			p.setuId(uid);
			p.setProductId(prod_id);
			p.setProductName(name);
			p.setQuantity(quantity);
			p.setPrice(price);
			list.add(p);
			p=null;
			
		}
		
		dbClose();
		return list;
	}



	public Cart fetchProduct(String id) throws SQLException {
		getConnection();
		String sql = "select * from cart where product_id=?";
		PreparedStatement pstmt = connection.prepareStatement(sql);
		pstmt.setString(1, id);
		ResultSet rst = pstmt.executeQuery();
		Cart p = new Cart();
		while(rst.next()){
			
			p.setCartId(rst.getInt("cart_id"));
			p.setuId(rst.getInt("uId"));
			p.setProductId(rst.getInt("product_id"));
			p.setQuantity(rst.getInt("quantity"));
			p.setPrice(rst.getInt("price"));
		}
		dbClose();
		return p;
	}
/*
	public void updateProduct(Cart p) throws SQLException {
		getConnection();
		String sql = "update product set name=?,price=?,category=?,featured=? where id=?";
		PreparedStatement st = connection.prepareStatement(sql);
		st.setString(1, p.getName());
		st.setString(2, p.getPrice());
		st.setString(3, p.getCategory());
		st.setString(4, p.getFeatured());
		st.setInt(5, p.getId());
		st.executeUpdate();
		dbClose();
	}

	public void addProduct(Cart p) throws SQLException {
		getConnection();
		String sql = "Insert into product(name,price,category,featured,image) values(?,?,?,?,?)";
		PreparedStatement st = connection.prepareStatement(sql);
		
		st.setString(1, p.getName());
		st.setString(2, p.getPrice());
		st.setString(3, p.getCategory());
		st.setString(4, p.getFeatured());
		st.setString(5, p.getImage());
		
		
		st.executeUpdate();
		dbClose();
	}

	*/
	
	
}


	
        
        	

		
	
        


