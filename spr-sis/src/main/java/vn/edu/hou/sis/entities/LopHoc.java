package vn.edu.hou.sis.entities;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the lop_hoc database table.
 * 
 */
@Entity
@Table(name="lop_hoc")
@NamedQuery(name="LopHoc.findAll", query="SELECT l FROM LopHoc l")
public class LopHoc implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private Integer id;

	@Column(name="code")
	private String code;

	@Column(name="is_deleted")
	private Integer isDeleted;

	@Column(name="khoa_hoc_id")
	private Integer khoaHocId;

	@Column(name="nganh_hoc_id")
	private Integer nganhHocId;

	public LopHoc() {
		this.isDeleted = 0;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCode() {
		return this.code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public Integer getIsDeleted() {
		return this.isDeleted;
	}

	public void setIsDeleted(Integer isDeleted) {
		this.isDeleted = isDeleted;
	}

	public Integer getKhoaHocId() {
		return this.khoaHocId;
	}

	public void setKhoaHocId(Integer khoaHocId) {
		this.khoaHocId = khoaHocId;
	}

	public Integer getNganhHocId() {
		return this.nganhHocId;
	}

	public void setNganhHocId(Integer nganhHocId) {
		this.nganhHocId = nganhHocId;
	}

}