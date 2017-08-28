package vn.edu.hou.sis.entities;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the khoa_hoc database table.
 * 
 */
@Entity
@Table(name="khoa_hoc")
@NamedQuery(name="KhoaHoc.findAll", query="SELECT k FROM KhoaHoc k WHERE k.isDeleted = 0")
public class KhoaHoc implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	@Column(name="is_deleted")
	private Integer isDeleted = 0;

	@Column(name="nam_bat_dau")
	private Integer namBatDau;

	@Column(name="nam_ket_thuc")
	private Integer namKetThuc;

	@Column(name="nganh_hoc_id")
	private Integer nganhHocId;

	@Column(name="ten_khoa_hoc")
	private String tenKhoaHoc;

	public KhoaHoc() {
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

	public Integer getNamBatDau() {
		return this.namBatDau;
	}

	public void setNamBatDau(Integer namBatDau) {
		this.namBatDau = namBatDau;
	}

	public Integer getNamKetThuc() {
		return this.namKetThuc;
	}

	public void setNamKetThuc(Integer namKetThuc) {
		this.namKetThuc = namKetThuc;
	}

	public Integer getNganhHocId() {
		return this.nganhHocId;
	}

	public void setNganhHocId(Integer nganhHocId) {
		this.nganhHocId = nganhHocId;
	}

	public String getTenKhoaHoc() {
		return this.tenKhoaHoc;
	}

	public void setTenKhoaHoc(String tenKhoaHoc) {
		this.tenKhoaHoc = tenKhoaHoc;
	}

}