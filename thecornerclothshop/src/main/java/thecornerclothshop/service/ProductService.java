package thecornerclothshop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import thecornerclothshop.dao.ProductDAOImpl;
import thecornerclothshop.model.Product;

@Service
@Transactional
public class ProductService {
	
	@Autowired
	ProductDAOImpl productDAOImpl;

	public List<Product> getAllProduct()
	{
		return productDAOImpl.getAllProducts();
	}
	
	public boolean addProduct(Product product)
	{
		return productDAOImpl.addProduct(product);
	}
	
	public boolean deleteProduct(Product product)
	{
		return productDAOImpl.deleteProduct(product);
	}
	
	public boolean updateProduct(Product product)
	{
		return productDAOImpl.updateProduct(product);
	}
	
}
