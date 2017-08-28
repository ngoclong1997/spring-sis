package vn.edu.hou.sis.entities;

import java.io.Serializable;

import javax.persistence.*;
import java.util.Date;


/**
 * The persistent class for the ho_so_sv database table.
 * 
 */
@Entity
@Table(name="ho_so_sv")
@NamedQuery(name="HoSoSv.findAll", query="SELECT h FROM HoSoSv h")
public class HoSoSv implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private Integer id;

	@Column(name="cb_tuyen_sinh_username")
	private String cbTuyenSinhUsername;

	private String cmnd;

	@Column(name="dan_toc")
	private String danToc;

	@Column(name="dia_chi")
	private String diaChi;

	private String email;

	@Column(name="gioi_tinh")
	private Integer gioiTinh;
	
	@Column(name="chuyen_nganh")
	private String chuyenNganh;

	@Column(name="nam_tot_nghiep")
	private Integer namTotNghiep;

	@Column(name="noi_cap")
	private String noiCap;

	@Column(name="trinh_do")
	private String trinhDo;

	@Column(name="ho_khau_thuong_tru")
	private String hoKhauThuongTru;

	@Column(name="ho_ten")
	private String hoTen;

	@Column(name="is_deleted")
	private Integer isDeleted;

	@Column(name="nganh_hoc_id")
	private Integer nganhHocId;

	@Temporal(TemporalType.DATE)
	@Column(name="ngay_lap")
	private Date ngayLap;

	@Temporal(TemporalType.DATE)
	@Column(name="ngay_sinh")
	private Date ngaySinh;

	@Column(name="ngoai_ngu")
	private String ngoaiNgu;

	@Column(name="noi_sinh")
	private String noiSinh;

	private String sdt;

	public HoSoSv() {
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCbTuyenSinhId() {
		return this.cbTuyenSinhUsername;
	}

	public void setCbTuyenSinhId(String cbTuyenSinhUsername) {
		this.cbTuyenSinhUsername = cbTuyenSinhUsername;
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
	
	public String getChuyenNganh() {
		return this.chuyenNganh;
	}

	public void setChuyenNganh(String chuyenNganh) {
		this.chuyenNganh = chuyenNganh;
	}

	public Integer getIsDeleted() {
		return this.isDeleted;
	}

	public void setIsDeleted(Integer isDeleted) {
		this.isDeleted = isDeleted;
	}

	public Integer getNamTotNghiep() {
		return this.namTotNghiep;
	}

	public void setNamTotNghiep(Integer namTotNghiep) {
		this.namTotNghiep = namTotNghiep;
	}

	public String getNoiCap() {
		return this.noiCap;
	}

	public void setNoiCap(String noiCap) {
		this.noiCap = noiCap;
	}

	public String getTrinhDo() {
		return this.trinhDo;
	}

	public void setTrinhDo(String trinhDo) {
		this.trinhDo = trinhDo;
	}


}