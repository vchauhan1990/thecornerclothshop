package thecornerclothshop.dao;

import java.util.List;

import thecornerclothshop.model.Cart;
import thecornerclothshop.model.Items;

public interface CartDAO {
	
	public List<Items> getItems();
	public void addToCart(Cart c);

}
