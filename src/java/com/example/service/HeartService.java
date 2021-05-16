/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.service;


import java.util.List;

import com.example.model.Heart;


public interface HeartService {

	public int getStock(int productId);
	public List<Heart> getProducts(int userId);
	public int getTotal(int userId);
	
}