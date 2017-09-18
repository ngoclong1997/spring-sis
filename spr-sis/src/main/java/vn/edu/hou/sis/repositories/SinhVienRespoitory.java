package vn.edu.hou.sis.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import vn.edu.hou.sis.entities.SinhVien;
import vn.edu.hou.sis.entities.VSinhVien;

public interface SinhVienRespoitory extends JpaRepository<SinhVien, Long>{

	@Query(value ="select v from VSinhVien v")	
	public List<VSinhVien> findAllViewSV();
	
	@Query(value="select s from SinhVien s where s.id = ?1")
	public SinhVien findSinhVienById(Integer id);
	
}
