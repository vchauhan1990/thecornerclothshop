package thecornerclothshop.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import thecornerclothshop.model.Cart;
import thecornerclothshop.model.Items;

@Repository
public class CartDAOImpl implements CartDAO{

	@Autowired
	SessionFactory sessionFactory;
	
	public List<Items> getItems() {
		Session session=sessionFactory.openSession();
		if(session!=null)
		{
			Transaction tx=session.beginTransaction();
			List<Cart> cart=(List<Cart>) session.createQuery("FROM Cart").list();
			List<Items> items=cart.get(0).getItems();
			tx.commit();
			session.close();
			
		return items;
		}
		return null;
	}


	public void addToCart(Cart c) {
		Session session=sessionFactory.openSession();
		if(session!=null)
		{
			Transaction tx=session.beginTransaction();
			session.save(c);
			tx.commit();
			session.close();
			
		}
		
	}
	
	

}
