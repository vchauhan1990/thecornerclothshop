package thecornerclothshop.dao;

import java.util.List;

import thecornerclothshop.model.User;



public interface UserDAO {
	public List<User> getAllUsers();
	public boolean addUser(User user);
	public boolean deleteUser(User user);
	public boolean updateUser(User user);
}
