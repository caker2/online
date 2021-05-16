package com.example.model;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

public class Heart  {

	private int heartId;
	
	private int uId;
	
	private int productId;
	
	private String productName;
	
	private int quantity;
	
	private int price;
        private String img;

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

	public int getHeartId() {
		return heartId;
	}

	public void setCartId(int cartId) {
		this.heartId = cartId;
	}

	public int getuId() {
		return uId;
	}

	public void setuId(int uId) {
		this.uId = uId;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "Heart [heartId=" + heartId + ", uId=" + uId + ", productId="
				+ productId + ", productName=" + productName + ", quantity="
				+ quantity + ", price=" + price + ", img=" + img +  "]";
	}
	
	
	
}



