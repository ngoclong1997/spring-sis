package vn.edu.hou.sis.view;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;


/**
 * The persistent class for the v_sinh_vien database table.
 * 
 */
@Entity
@Table(name="v_sinh_vien")
@NamedQuery(name="VSinhVien.findAll", query="SELECT v FROM VSinhVien v")
public class VSinhVien implements Serializable {
	private static final long serialVersionUID = 1L;

	private String code;

	@Column(name="dia_chi")
	private String diaChi;

	private String email;

	@Column(name="gioi_tinh")
	private Integer gioiTinh;

	@Column(name="ho_ten")
	private String hoTen;

	@Temporal(TemporalType.DATE)
	@Column(name="ngay_sinh")
	private Date ngaySinh;

	@Id
	private Integer svid;

	@Column(name="ten_nganh")
	private String tenNganh;

	@Column(name="trang_thai")
	private String trangThai;

	public VSinhVien() {
	}

	public String getCode() {
		return this.code;
	}

	public void setCode(String code) {
		this.code = code;
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

	public String getHoTen() {
		return this.hoTen;
	}

	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}

	public Date getNgaySinh() {
		return this.ngaySinh;
	}

	public void setNgaySinh(Date ngaySinh) {
		this.ngaySinh = ngaySinh;
	}

	public Integer getSvid() {
		return this.svid;
	}

	public void setSvid(Integer svid) {
		this.svid = svid;
	}

	public String getTenNganh() {
		return this.tenNganh;
	}

	public void setTenNganh(String tenNganh) {
		this.tenNganh = tenNganh;
	}

	public String getTrangThai() {
		return this.trangThai;
	}

	public void setTrangThai(String trangThai) {
		this.trangThai = trangThai;
	}

}