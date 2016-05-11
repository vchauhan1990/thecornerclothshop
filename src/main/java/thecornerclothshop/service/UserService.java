package thecornerclothshop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import thecornerclothshop.dao.UserDAOImpl;
import thecornerclothshop.model.User;

@Service
@Transactional
public class UserService {
	
	@Autowired
	UserDAOImpl userDAOImpl;

	public List<User> getAllUser()
	{
		return userDAOImpl.getAllUsers();
	}
	
	public boolean addUser(User user)
	{
		return userDAOImpl.addUser(user);
	}
	
	public boolean deleteUser(User user)
	{
		return userDAOImpl.deleteUser(user);
	}
	
	public boolean updateUser(User user)
	{
		return userDAOImpl.updateUser(user);
	}
	
}
