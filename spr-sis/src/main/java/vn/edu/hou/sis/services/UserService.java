package vn.edu.hou.sis.services;


import java.util.List;

import vn.edu.hou.sis.entities.SinhVien;
import vn.edu.hou.sis.entities.User;
import vn.edu.hou.sis.exceptions.UserNotFound;

public interface UserService {
	public User create(User user);
	public User delete(String username) throws UserNotFound;
	public List<User> findAll();
	public User findByUsername(String username);
	public List<String> getUserRoles(String username);
	public SinhVien findSinhVienByUsername(String username);
}