package thecornerclothshop.dao;

import java.util.List;

import thecornerclothshop.model.Product;

public interface ProductDAO {

	public List<Product> getAllProducts();
	public boolean addProduct(Product product);
	public boolean deleteProduct(Product product);
	public boolean updateProduct(Product product);
	
}
