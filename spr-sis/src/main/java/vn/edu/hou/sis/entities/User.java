package vn.edu.hou.sis.entities;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "users")
public class User implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	@Column(name = "cmnd")
	private String cmnd;

	@Column(name = "dia_chi")
	private String diaChi;

	@Column(name = "email")
	private String email;

	@Column(name = "gioi_tinh")
	private Integer gioiTinh;

	@Column(name = "ho_ten")
	private String hoTen;

	@Column(name = "is_deleted")
	private Integer isDeleted;

	@Temporal(TemporalType.DATE)
	@Column(name = "ngay_sinh")
	private Date ngaySinh;

	@Column(name = "noi_lam_viec")
	private String noiLamViec;

	@Column(name = "password")
	private String password;

	@Column(name = "sdt1")
	private String sdt1;

	@Column(name = "sdt2")
	private String sdt2;

	@Column(name = "username")
	private String username;

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public User() {
	}

	public User(String cmnd, String diaChi, String email, int gioiTinh, String hoTen, int isDeleted,
			Date ngaySinh, String noiLamViec, String password, String sdt1, String sdt2, String username) {
		super();
		this.cmnd = cmnd;
		this.diaChi = diaChi;
		this.email = email;
		this.gioiTinh = gioiTinh;
		this.hoTen = hoTen;
		this.isDeleted = isDeleted;
		this.ngaySinh = ngaySinh;
		this.noiLamViec = noiLamViec;
		this.password = password;
		this.sdt1 = sdt1;
		this.sdt2 = sdt2;
		this.username = username;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCmnd() {
		return this.cmnd;
	}

	public void setCmnd(String cmnd) {
		this.cmnd = cmnd;
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

	public Integer getIsDeleted() {
		return this.isDeleted;
	}

	public void setIsDeleted(Integer isDeleted) {
		this.isDeleted = isDeleted;
	}

	public Date getNgaySinh() {
		return this.ngaySinh;
	}

	public void setNgaySinh(Date ngaySinh) {
		this.ngaySinh = ngaySinh;
	}

	public String getNoiLamViec() {
		return this.noiLamViec;
	}

	public void setNoiLamViec(String noiLamViec) {
		this.noiLamViec = noiLamViec;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSdt1() {
		return this.sdt1;
	}

	public void setSdt1(String sdt1) {
		this.sdt1 = sdt1;
	}

	public String getSdt2() {
		return this.sdt2;
	}

	public void setSdt2(String sdt2) {
		this.sdt2 = sdt2;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

}