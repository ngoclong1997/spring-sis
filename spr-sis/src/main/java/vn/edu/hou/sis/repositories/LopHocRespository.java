package vn.edu.hou.sis.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import vn.edu.hou.sis.entities.LopHoc;

public interface LopHocRespository extends JpaRepository<LopHoc, Long>{
	@Query("select l from LopHoc l where l.isDeleted = 0")
	public List<LopHoc> findLopHocByIsDeleted();
	
	@Query("select l from LopHoc l where l.isDeleted = 0 and l.id = ?1")
	public LopHoc findLopHocById(Integer id);

	@Query("select l from LopHoc l where l.isDeleted = 0 and l.code = ?1")
	public LopHoc findLopHocByCode(String code);

	@Query("select l from LopHoc l where l.isDeleted = 0 and l.khoaHocId = ?1 and l.code LIKE CONCAT('%',?2,'%')")
	public List<LopHoc> checkExist(Integer khoaHocId, String trinhDo);
	

}
 