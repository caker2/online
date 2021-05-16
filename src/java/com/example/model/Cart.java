package com.example.model;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

public class Cart{

	private int cartId;
	
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

	public int getCartId() {
		return cartId;
	}

	public void setCartId(int cartId) {
		this.cartId = cartId;
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
		return "Cart [cartId=" + cartId + ", uId=" + uId + ", productId="
				+ productId + ", productName=" + productName + ", quantity="
				+ quantity + ", price=" + price + ", img=" + img +  "]";
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
	public ArrayList<Cart> lowtohigh(ArrayList list) {
		Collections.sort(list);
		return list;
	}
	public int compareTo(Cart p) {
		
		return (this.price) - (p.price);
	}
	public ArrayList<Cart> hightolow(ArrayList list) {
		Collections.sort(list, new Temp());
		return list;
	}
	
}



class Temp implements Comparator<Product>{

	@Override
	public int compare(Product o1, Product o2) {
		return (o2.getPrice()) - (o1.getPrice());
	}
	
}
