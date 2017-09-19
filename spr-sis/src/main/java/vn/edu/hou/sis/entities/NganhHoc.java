package vn.edu.hou.sis.entities;

import java.io.Serializable;
import javax.persistence.*;
import javax.validation.constraints.Size;

/**
 * The persistent class for the nganh_hoc database table.
 * 
 */
@Entity
@Table(name = "nganh_hoc")
@NamedQuery(name = "NganhHoc.findAll", query = "SELECT n FROM NganhHoc n")
public class NganhHoc implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Integer id;

	@Column(name = "is_deleted")
	private Integer isDeleted;

	@Column(name = "ky_hieu")
	private String kyHieu;

	@Column(name = "ten_nganh")
	private String tenNganh;

	public NganhHoc() {
		this.isDeleted = 0;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getIsDeleted() {
		return this.isDeleted;
	}

	public void setIsDeleted(Integer isDeleted) {
		this.isDeleted = isDeleted;
	}

	public String getKyHieu() {
		return this.kyHieu;
	}

	public void setKyHieu(String kyHieu) {
		this.kyHieu = kyHieu;
	}

	public String getTenNganh() {
		return this.tenNganh;
	}

	public void setTenNganh(String tenNganh) {
		this.tenNganh = tenNganh;
	}

}