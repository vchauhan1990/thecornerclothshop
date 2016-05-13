package thecornerclothshop.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import thecornerclothshop.model.ContactForm;

@Repository
public class ContactFormDAOImpl implements ContactFormDAO{

	@Autowired
	SessionFactory sessionFactory;
	
	public boolean storeInfo(ContactForm cf) {
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		session.save(cf);
		tx.commit();
		session.close();
		return true;
	}

	public List<ContactForm> getAllInfo() {
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		@SuppressWarnings("unchecked")
		List<ContactForm> l=session.createCriteria("FROM contactform").list();
		tx.commit();
		session.close();
		return l;
	}

	
	
}
