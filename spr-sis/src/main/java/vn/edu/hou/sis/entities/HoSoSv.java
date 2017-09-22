package vn.edu.hou.sis.entities;

import java.io.Serializable;

import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.springframework.format.annotation.DateTimeFormat;

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
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Integer id;

	@Column(name = "cbts_username")
	private String cbTuyenSinhUsername;
	
	@Column(name = "da_tao_sv")
	private Integer trangThaiHoSo;

	public Integer getTrangThaiHoSo() {
		return trangThaiHoSo;
	}

	public void setTrangThaiHoSo(Integer trangThaiHoSo) {
		this.trangThaiHoSo = trangThaiHoSo;
	}

	@Column(name = "cmnd")
	@NotNull
	private String cmnd;

	
	@Column(name = "dan_toc")
	private String danToc;

	
	@Column(name = "dia_chi")
	@NotNull
	private String diaChi;

	
	@Column(name = "email")
	@NotNull @Email
	private String email;

	
	@Column(name = "gioi_tinh")
	private Integer gioiTinh;

	@Column(name = "chuyen_nganh")
	private String chuyenNganh;

	
	@Column(name = "nam_tot_nghiep")
	private Integer namTotNghiep;

	
	@Column(name = "noi_cap")
	private String noiCap;

	
	@Column(name = "trinh_do")
	private Integer trinhDo;

	@Column(name = "ho_khau_thuong_tru")
	private String hoKhauThuongTru;

	
	@Column(name = "ho_ten")
	@NotNull
	private String hoTen;

	@Column(name = "is_deleted")
	private Integer isDeleted;

	@Column(name = "nganh_hoc_id")
	private Integer nganhHocId;

	@Column(name = "ngay_lap")
	private Date ngayLap;

	
	@Column(name = "ngay_sinh")
	@NotNull @Past
	private Date ngaySinh;

	
	@Column(name = "ngoai_ngu")
	private String ngoaiNgu;

	
	@Column(name = "noi_sinh")
	private String noiSinh;

	
	@Column(name = "sdt")
	@NotNull
	private String sdt;

	public HoSoSv() {
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

	public void setNgaySinh(String ngaySinh) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		try {
			this.ngaySinh = sdf.parse(ngaySinh);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
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

	public Integer getTrinhDo() {
		return this.trinhDo;
	}

	public void setTrinhDo(Integer trinhDo) {
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

	public String nullProperties() {
		String properties = "";
		if (this.cmnd == null || this.cmnd.equals("")) properties += "CMND_";
		if (this.diaChi == null || this.diaChi.equals("")) properties += "Ä�á»‹a chá»‰_";
		if (this.email == null || this.email.equals("")) properties += "Email_";
		if (this.gioiTinh == null) properties += "Giá»›i tÃ­nh_";
		if (this.namTotNghiep == null) properties += "NÄƒm tá»‘t nghiá»‡p_";
		if (this.trinhDo == null) properties += "TrÃ¬nh Ä‘á»™_";
		if (this.hoTen == null || this.hoTen.equals("")) properties += "Há»� tÃªn_";
		if (this.nganhHocId == null) properties += "NgÃ nh há»�c_";
		if (this.ngaySinh == null) properties += "NgÃ y sinh_";
		if (this.sdt == null || this.sdt.equals("")) properties += "Sá»‘ Ä‘iá»‡n thoáº¡i";
		return properties;
	}

}