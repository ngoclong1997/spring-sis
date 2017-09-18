package vn.edu.hou.sis.entities;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;


/**
 * The persistent class for the users database table.
 * 
 */
@Entity
@Table(name="users")
@NamedQuery(name="User.findAll", query="SELECT u FROM User u")
public class User implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private Integer id;

	@Column(name="cmnd")
	private String cmnd;

	@Column(name="dia_chi")
	private String diaChi;

	@Column(name="email")
	private String email;

	@Column(name="gioi_tinh")
	private Integer gioiTinh;

	@Column(name="ho_ten")
	private String hoTen;

	@Column(name="is_deleted")
	private Integer isDeleted;

	@Temporal(TemporalType.DATE)
	@Column(name="ngay_sinh")
	private Date ngaySinh;

	@Column(name="noi_lam_viec")
	private String noiLamViec;

	private String password;

	private String sdt1;

	private String sdt2;

	private String username;

	public User() {
		this.isDeleted = 0;
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