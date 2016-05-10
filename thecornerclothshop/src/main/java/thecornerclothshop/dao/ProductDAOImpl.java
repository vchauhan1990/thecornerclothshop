package thecornerclothshop.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import thecornerclothshop.model.Product;


@Repository
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	SessionFactory sessionFactory;
	List<Product> p;
	
		private Session getSession()
		{
			return sessionFactory.openSession();
		}
	
	@SuppressWarnings("unchecked")
	public List<Product> getAllProducts() {
		
		Session session=getSession();
		Transaction t=session.beginTransaction();
		p=(List<Product>)session.createQuery("FROM Product").list();
		t.commit();
		session.close();
		return p;
	}

	public boolean addProduct(Product product) {
		try{
		Session session=getSession();
		Transaction t=session.beginTransaction();
		session.save(product);
		t.commit();
		session.close();
		return true;
		}
		catch(Exception e)
		{
			System.out.println("Exception(ADD): "+e);
		return false;
		}
	}

	public boolean deleteProduct(Product product) {
		try{
			Session session=getSession();
			Transaction t=session.beginTransaction();
			session.delete(product);
			t.commit();
			session.close();
			return true;
			}
			catch(Exception e)
			{
				System.out.println("Exception(ADD): "+e);
			return false;
			}
	}

	public boolean updateProduct(Product product) {
		try{
			Session session=getSession();
			Transaction t=session.beginTransaction();
			session.update(product);
			t.commit();
			session.close();
			return true;
			}
			catch(Exception e)
			{
				System.out.println("Exception(ADD): "+e);
			return false;
			}
	}

}
