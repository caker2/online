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
import java.sql.DriverManager;
import java.sql.Statement;
public class number {
public void delete_value(String sl_no){
	DBConnection obj_DB_Connection=new DBConnection();
	Connection connection=obj_DB_Connection.getConnection();
	PreparedStatement ps=null;

try{  //Registering the Driver
      DriverManager.registerDriver(new com.mysql.jdbc.Driver());
      //Getting the connection
      String mysqlUrl = "jdbc:mysql://localhost:3306/shopping_cart?zeroDateTimeBehavior=convertToNull&serverTimezone=UTC";
      Connection con = DriverManager.getConnection(mysqlUrl, "root", "root");
      //Creating a Statement object
      Statement stmt = con.createStatement();
      
      //Retrieving the data
      ResultSet rs = stmt.executeQuery("select count(*) from cart  WHERE uid=?");
      while (rs.next());{
		 System.out.println(rs.getString("uid"));
      System.out.println("Table contains "+rs.getInt("count(uid)")+" rows");}
	} catch (Exception e) {
	 System.out.println(e);
	}
	}
}