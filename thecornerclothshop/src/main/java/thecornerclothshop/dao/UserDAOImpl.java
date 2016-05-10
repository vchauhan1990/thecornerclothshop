package thecornerclothshop.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import thecornerclothshop.model.User;



@Repository
public class UserDAOImpl implements UserDAO {

	@Autowired
	SessionFactory sessionFactory;
	List<User> p;
	
		private Session getSession()
		{
			return sessionFactory.openSession();
		}
	
	@SuppressWarnings("unchecked")
	public List<User> getAllUsers() {
		
		Session session=getSession();
		Transaction t=session.beginTransaction();
		p=(List<User>)session.createQuery("FROM User").list();
		t.commit();
		session.close();
		return p;
	}

	public boolean addUser(User user) {
		try{
		Session session=getSession();
		Transaction t=session.beginTransaction();
		session.save(user);
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

	public boolean deleteUser(User user) {
		try{
			Session session=getSession();
			Transaction t=session.beginTransaction();
			session.delete(user);
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

	public boolean updateUser(User user) {
		try{
			Session session=getSession();
			Transaction t=session.beginTransaction();
			session.update(user);
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
