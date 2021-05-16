/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.model;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

public class Product {
	
	private int id;
	private String name;
	private int price;
	private int category;
        private int stock;
        private String size;
	private String featured;
	private String img;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getCategory() {
        return category;
    }

    public void setCategory(int category) {
        this.category = category;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getFeatured() {
        return featured;
    }

    public void setFeatured(String featured) {
        this.featured = featured;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }
	
	@Override
	public String toString() {
		return "Product [id=" + id + ", name=" + name + ", price=" + price + ", category=" + category + ", featured="
				+ featured + ", image=" + img + "]";
	}
	public boolean check(ArrayList<String> cartlist, String id2) {
		for(String id : cartlist) {
			if(id.equals(id2))
				return true;
		}
		return false;
	}
	public ArrayList<String> remove(ArrayList<String> cartlist, String id) {
		for(String cid : cartlist) {
			if(cid.equals(id)) {
				cartlist.remove(cid);
				break;
			}
				
		}
		
		return cartlist;
	}
	
}








