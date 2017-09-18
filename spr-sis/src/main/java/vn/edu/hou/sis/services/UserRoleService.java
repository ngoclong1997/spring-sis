package vn.edu.hou.sis.services;

import vn.edu.hou.sis.entities.UserRole;

public interface UserRoleService {
	public Integer findRoleIdByRole(String role);
	public UserRole create(UserRole userRole);
}
