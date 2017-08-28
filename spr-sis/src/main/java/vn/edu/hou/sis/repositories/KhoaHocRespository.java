package vn.edu.hou.sis.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import vn.edu.hou.sis.entities.KhoaHoc;

public interface KhoaHocRespository extends JpaRepository<KhoaHoc, Long>{
	@Query("select k from KhoaHoc k where k.isDeleted = 0")
	public List<KhoaHoc> findKhoaHocByIsdeleted();
	
	@Query("select k from KhoaHoc k where k.id = ?1 and k.isDeleted = 0")
	public KhoaHoc findKhoaHocById(Integer id);
}
