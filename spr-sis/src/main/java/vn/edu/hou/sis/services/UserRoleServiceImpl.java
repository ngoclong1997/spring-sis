package vn.edu.hou.sis.services;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import vn.edu.hou.sis.entities.UserRole;
import vn.edu.hou.sis.repositories.UserRoleRepository;

@Service
public class UserRoleServiceImpl implements UserRoleService{

	@Resource
	UserRoleRepository userRoleRepository;
	
	@Override
	public Integer findRoleIdByRole(String role) {
		return userRoleRepository.findRoleIdByRole(role);
	}

	@Override
	public UserRole create(UserRole userRole) {
		UserRole created = userRole;
		return userRoleRepository.save(created);
	}
	
}
