package vn.edu.hou.sis.entities;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the trang_thai_sv database table.
 * 
 */
@Entity
@Table(name="trang_thai_sv")
@NamedQuery(name="TrangThaiSv.findAll", query="SELECT t FROM TrangThaiSv t")
public class TrangThaiSv implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private Integer id;

	@Column(name="is_deleted")
	private Integer isDeleted;

	@Column(name="trang_thai")
	private String trangThai;

	public TrangThaiSv() {
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

	public String getTrangThai() {
		return this.trangThai;
	}

	public void setTrangThai(String trangThai) {
		this.trangThai = trangThai;
	}

}