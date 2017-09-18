package vn.edu.hou.sis.repositories;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import vn.edu.hou.sis.entities.HoSoSv;
import vn.edu.hou.sis.entities.NganhHoc;

public interface HoSoSVRepository extends JpaRepository<HoSoSv, Long> {
	public List<HoSoSv> findByCbTuyenSinhUsername(String cbTuyenSinhUsername);

	@Query("UPDATE HoSoSv hs set hs.isDeleted = 1 where hs.cmnd = ?1")
	void delete(String cmnd);

	public HoSoSv findByCmnd(String cmnd);

	@Query("Select n from NganhHoc n where n.isDeleted = 0")
	public List<NganhHoc> findAllNganhHoc();

	@Query("Select hs from HoSoSv hs where hs.id = ?1 and hs.isDeleted = 0")
	public HoSoSv findById(Integer id);

	@Modifying
	@Query("UPDATE HoSoSv hs SET hs.cbTuyenSinhUsername = ?1, hs.chuyenNganh= ?2, hs.cmnd = ?3, hs.danToc = ?4, hs.diaChi = ?5, hs.email = ?6, hs.gioiTinh = ?7, hs.hoKhauThuongTru = ?8, hs.hoTen = ?9, hs.isDeleted = ?10, hs.namTotNghiep=?11, hs.nganhHocId = ?12, hs.ngayLap = ?13, hs.ngaySinh = ?14, hs.ngoaiNgu = ?15, hs.noiCap = ?16, hs.noiSinh = ?17, hs.sdt = ?18, hs.trinhDo = ?19 where hs.id = ?20")
	public void updateHoSoById(String cbTuyenSinhUsername, String chuyenNganh, String cmnd, String danToc,
			String diaChi, String email, Integer gioiTinh, String hoKhauThuongTru, String hoTen, Integer isDeleted,
			String string, Integer nganhHocId, Date ngayLap, Date ngaySinh, String ngoaiNgu, String noiCap,
			String noiSinh, String sdt, String trinhDo, Integer id);
}
