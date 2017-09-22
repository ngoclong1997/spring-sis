package vn.edu.hou.sis.repositories;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import vn.edu.hou.sis.entities.HoSoSv;
import vn.edu.hou.sis.entities.NganhHoc;

public interface HoSoSVRepository extends JpaRepository<HoSoSv, Long> {
	@Query("Select hs from HoSoSv hs where hs.cbTuyenSinhUsername = ?1 and hs.isDeleted = 0")
	public List<HoSoSv> findByCbTuyenSinhUsername(String cbTuyenSinhUsername);

	@Modifying
	@Query("UPDATE HoSoSv hs set hs.isDeleted = 1 where hs.id = ?1")
	void deleteHoSoById(Integer id);

	@Query("Select hs from HoSoSv hs where hs.cmnd = ?1 and hs.isDeleted = 0")
	public HoSoSv findByCmnd(String cmnd);

	@Query("Select hs from HoSoSv hs where hs.email = ?1 and hs.isDeleted = 0")
	public HoSoSv findByEmail(String email);

	@Query("Select hs from HoSoSv hs where hs.sdt = ?1 and hs.isDeleted = 0")
	public HoSoSv findBySDT(String sdt);

	@Query("Select n from NganhHoc n where n.isDeleted = 0")
	public List<NganhHoc> findAllNganhHoc();

	@Query("Select hs from HoSoSv hs where hs.id = ?1 and hs.isDeleted = 0")
	public HoSoSv findById(Integer id);

	@Query("Select n from NganhHoc n where n.isDeleted = 0 and n.id = ?1")
	public NganhHoc findNganhHocById(Integer id);

	@Query("Select l.id from LopHoc l where l.code = ?1 and l.isDeleted = 0")
	public Integer findLopIdByCode(String code);

	@Modifying
	@Query("Update HoSoSv hs set hs.trangThaiHoSo = 1 where hs.id = ?1")
	void updateTrangThaiHoSo(Integer id);

	@Query("select nh.kyHieu from NganhHoc nh where nh.id = ?1 and nh.isDeleted = 0")
	public String findKyHieuByNganhHocId(Integer nganhHocId);

	@Modifying
	@Query("UPDATE HoSoSv hs SET hs.cbTuyenSinhUsername = ?1, hs.chuyenNganh= ?2, hs.cmnd = ?3, hs.danToc = ?4, hs.diaChi = ?5, hs.email = ?6, hs.gioiTinh = ?7, hs.hoKhauThuongTru = ?8, hs.hoTen = ?9, hs.isDeleted = ?10, hs.namTotNghiep=?11, hs.nganhHocId = ?12, hs.ngayLap = ?13, hs.ngaySinh = ?14, hs.ngoaiNgu = ?15, hs.noiCap = ?16, hs.noiSinh = ?17, hs.sdt = ?18, hs.trinhDo = ?19 where hs.id = ?20")
	public void updateHoSoById(String cbTuyenSinhUsername, String chuyenNganh, String cmnd, String danToc,
			String diaChi, String email, Integer gioiTinh, String hoKhauThuongTru, String hoTen, Integer isDeleted,
			Integer namTotNghiep, Integer nganhHocId, Date ngayLap, Date ngaySinh, String ngoaiNgu, String noiCap,
			String noiSinh, String sdt, Integer trinhDo, Integer id);
}
