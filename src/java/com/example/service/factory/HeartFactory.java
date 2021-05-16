/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.service.factory;
import com.example.service.HeartService;
import com.example.service.impl.HeartServiceImpl;


/**
 *
 * @author Ole
 */
public class HeartFactory {
    public static HeartService create(){
		HeartService heartService = new HeartServiceImpl();
		return heartService;
	}
    
}
