package vn.edu.hou.sis.entities;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;

/**
 * The persistent class for the ho_so_sv database table.
 * 
 */
@Entity
@Table(name = "ho_so_sv")
@NamedQuery(name = "HoSoSv.findAll", query = "SELECT h FROM HoSoSv h")
public class HoSoSv implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "id")
	private Integer id;

	@Column(name = "cb_tuyen_sinh_username")
	private String cbTuyenSinhUsername;

	@Column(name = "chuyen_nganh")
	private String chuyenNganh;

	@Column(name="cmnd")
	private String cmnd;

	@Column(name = "dan_toc")
	private String danToc;

	@Column(name = "dia_chi")
	private String diaChi;

	@Column(name="email")
	private String email;

	@Column(name = "gioi_tinh")
	private Integer gioiTinh;

	@Column(name = "ho_khau_thuong_tru")
	private String hoKhauThuongTru;

	@Column(name = "ho_ten")
	private String hoTen;

	@Column(name = "is_deleted")
	private Integer isDeleted;

	@Column(name = "nam_tot_nghiep")
	private String namTotNghiep;

	@Column(name = "nganh_hoc_id")
	private Integer nganhHocId;

	@Temporal(TemporalType.DATE)
	@Column(name = "ngay_lap")
	private Date ngayLap;

	@Temporal(TemporalType.DATE)
	@Column(name = "ngay_sinh")
	private Date ngaySinh;

	@Column(name = "ngoai_ngu")
	private String ngoaiNgu;

	@Column(name = "noi_cap")
	private String noiCap;

	@Column(name = "noi_sinh")
	private String noiSinh;

	@Column(name = "sdt")
	private String sdt;

	@Column(name = "trinh_do")
	private String trinhDo;

	public HoSoSv() {
		this.isDeleted = 0;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCbTuyenSinhUsername() {
		return this.cbTuyenSinhUsername;
	}

	public void setCbTuyenSinhUsername(String cbTuyenSinhUsername) {
		this.cbTuyenSinhUsername = cbTuyenSinhUsername;
	}

	public String getChuyenNganh() {
		return this.chuyenNganh;
	}

	public void setChuyenNganh(String chuyenNganh) {
		this.chuyenNganh = chuyenNganh;
	}

	public String getCmnd() {
		return this.cmnd;
	}

	public void setCmnd(String cmnd) {
		this.cmnd = cmnd;
	}

	public String getDanToc() {
		return this.danToc;
	}

	public void setDanToc(String danToc) {
		this.danToc = danToc;
	}

	public String getDiaChi() {
		return this.diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Integer getGioiTinh() {
		return this.gioiTinh;
	}

	public void setGioiTinh(Integer gioiTinh) {
		this.gioiTinh = gioiTinh;
	}

	public String getHoKhauThuongTru() {
		return this.hoKhauThuongTru;
	}

	public void setHoKhauThuongTru(String hoKhauThuongTru) {
		this.hoKhauThuongTru = hoKhauThuongTru;
	}

	public String getHoTen() {
		return this.hoTen;
	}

	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}

	public Integer getIsDeleted() {
		return this.isDeleted;
	}

	public void setIsDeleted(Integer isDeleted) {
		this.isDeleted = isDeleted;
	}

	public String getNamTotNghiep() {
		return this.namTotNghiep;
	}

	public void setNamTotNghiep(String namTotNghiep) {
		this.namTotNghiep = namTotNghiep;
	}

	public Integer getNganhHocId() {
		return this.nganhHocId;
	}

	public void setNganhHocId(Integer nganhHocId) {
		this.nganhHocId = nganhHocId;
	}

	public Date getNgayLap() {
		return this.ngayLap;
	}

	public void setNgayLap(Date ngayLap) {
		this.ngayLap = ngayLap;
	}

	public Date getNgaySinh() {
		return this.ngaySinh;
	}

	public void setNgaySinh(Date ngaySinh) {
		this.ngaySinh = ngaySinh;
	}

	public String getNgoaiNgu() {
		return this.ngoaiNgu;
	}

	public void setNgoaiNgu(String ngoaiNgu) {
		this.ngoaiNgu = ngoaiNgu;
	}

	public String getNoiCap() {
		return this.noiCap;
	}

	public void setNoiCap(String noiCap) {
		this.noiCap = noiCap;
	}

	public String getNoiSinh() {
		return this.noiSinh;
	}

	public void setNoiSinh(String noiSinh) {
		this.noiSinh = noiSinh;
	}

	public String getSdt() {
		return this.sdt;
	}

	public void setSdt(String sdt) {
		this.sdt = sdt;
	}

	public String getTrinhDo() {
		return this.trinhDo;
	}

	public void setTrinhDo(String trinhDo) {
		this.trinhDo = trinhDo;
	}

	@Override
	public String toString() {
		return "HoSoSv [id=" + id + ", cbTuyenSinhUsername=" + cbTuyenSinhUsername + ", cmnd=" + cmnd + ", danToc="
				+ danToc + ", diaChi=" + diaChi + ", email=" + email + ", gioiTinh=" + gioiTinh + ", chuyenNganh="
				+ chuyenNganh + ", namTotNghiep=" + namTotNghiep + ", noiCap=" + noiCap + ", trinhDo=" + trinhDo
				+ ", hoKhauThuongTru=" + hoKhauThuongTru + ", hoTen=" + hoTen + ", isDeleted=" + isDeleted
				+ ", nganhHocId=" + nganhHocId + ", ngayLap=" + ngayLap + ", ngaySinh=" + ngaySinh + ", ngoaiNgu="
				+ ngoaiNgu + ", noiSinh=" + noiSinh + ", sdt=" + sdt + "]";
	}
}