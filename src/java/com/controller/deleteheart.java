/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com.example.controller.DBConnection;
public class deleteheart {
public void delete_value(String sl_no){
	DBConnection obj_DB_Connection=new DBConnection();
	Connection connection=obj_DB_Connection.getConnection();
	PreparedStatement ps=null;
	try {
	 String querry="delete from heart where product_id=?";
	 ps=connection.prepareStatement(querry);		
	 ps.setString(1, sl_no);
	 ps.executeUpdate();
	} catch (Exception e) {
	 System.out.println(e);
	}
	}
}