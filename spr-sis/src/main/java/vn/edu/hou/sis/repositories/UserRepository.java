package vn.edu.hou.sis.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import vn.edu.hou.sis.entities.SinhVien;
import vn.edu.hou.sis.entities.User;

public interface UserRepository extends JpaRepository<User, Long>{
	public User findByUsername(String username);
	@Query("SELECT r.loai from Role r, UserRole ur where r.id = ur.userRoleId and ur.username = ?1 and ur.isDeleted = 0")
	public List<String> getUserRoles(String username);
	@Query("SELECT s from SinhVien s, User u where u.username = ?1 and u.id = s.userId and u.isDeleted = 0")
	public SinhVien findSinhVienByUsername(String username);
}
