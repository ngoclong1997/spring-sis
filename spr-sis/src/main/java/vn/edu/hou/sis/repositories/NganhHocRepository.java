package vn.edu.hou.sis.repositories;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import vn.edu.hou.sis.entities.NganhHoc;

public interface NganhHocRepository extends JpaRepository<NganhHoc, Long> {
	@Query("select n from NganhHoc n where n.tenNganh = ?1 and n.isDeleted = 0")
	public NganhHoc findNganhHocByTenNganh(String tenNganh);
	@Query("select n from NganhHoc n where n.isDeleted = 0")
	public List<NganhHoc> findNganhHocWithStartAndLimit(Pageable pageable);
}
