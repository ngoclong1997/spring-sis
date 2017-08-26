package vn.edu.hou.sis.services;

import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vn.edu.hou.sis.entities.SinhVien;
import vn.edu.hou.sis.entities.User;
import vn.edu.hou.sis.exceptions.UserNotFound;
import vn.edu.hou.sis.repositories.UserRepository;



@Service
public class UserServiceImpl implements UserService {

	@Resource
	private UserRepository userRepository;

	@Override
	@Transactional
	public User create(User user) {
		User created = user;
		return userRepository.save(created);
	}

	@Override
	@Transactional
	public User findByUsername(String username) {
		return userRepository.findByUsername(username);
	}

	@Override
	@Transactional(rollbackFor=UserNotFound.class)
	public User delete(String username) throws UserNotFound {
		User deletedUser = userRepository.findByUsername(username);
		if (deletedUser == null)
			throw new UserNotFound();
		userRepository.delete(deletedUser);
		return deletedUser;
	}

	@Override
	public Iterator<User> findAll() {
		return (Iterator<User>) userRepository.findAll();
	}

	@Override
	public List<String> getUserRoles(String username) {
		return userRepository.getUserRoles(username);
	}

	@Override
	public SinhVien findSinhVienByUsername(String username) {
		return userRepository.findSinhVienByUsername(username);
	}
	
	
}
