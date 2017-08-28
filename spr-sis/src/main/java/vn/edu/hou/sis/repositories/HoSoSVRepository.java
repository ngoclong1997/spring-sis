package vn.edu.hou.sis.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import vn.edu.hou.sis.entities.HoSoSv;

public interface HoSoSVRepository extends JpaRepository<HoSoSv, Long>{
	public List<HoSoSv> findByCbTuyenSinhUsername(String cbTuyenSinhUsername);
	@Query("UPDATE HoSoSv hs set hs.isDeleted = 1 where hs.cmnd = ?1")
	void delete(String cmnd);
	public HoSoSv findByCmnd(String cmnd);
}
