package vn.edu.hou.sis.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import vn.edu.hou.sis.entities.UserRole;

public interface UserRoleRepository extends JpaRepository<UserRole, Long>{

	@Query("Select r.id from Role r where r.isDeleted = 0 and r.loai = ?1")
	public Integer findRoleIdByRole(String role);
	
}
