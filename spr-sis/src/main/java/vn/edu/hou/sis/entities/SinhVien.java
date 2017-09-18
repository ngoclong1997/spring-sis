package vn.edu.hou.sis.entities;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the sinh_vien database table.
 * 
 */
@Entity
@Table(name="sinh_vien")
@NamedQuery(name="SinhVien.findAll", query="SELECT s FROM SinhVien s")
public class SinhVien implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private Integer id;

	@Column(name="cbts_username")
	private String cbtsUsername;

	@Column(name="is_deleted")
	private Integer isDeleted;

	@Column(name="lop_id")
	private Integer lopId;

	@Column(name="ma_quan_ly")
	private String maQuanLy;

	@Column(name="nganh_hoc_id")
	private Integer nganhHocId;

	@Column(name="trang_thai_id")
	private Integer trangThaiId;

	@Column(name ="username")
	private String username;

	public SinhVien() {
		this.isDeleted = 0;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCbtsUsername() {
		return this.cbtsUsername;
	}

	public void setCbtsUsername(String cbtsUsername) {
		this.cbtsUsername = cbtsUsername;
	}

	public Integer getIsDeleted() {
		return this.isDeleted;
	}

	public void setIsDeleted(Integer isDeleted) {
		this.isDeleted = isDeleted;
	}

	public Integer getLopId() {
		return this.lopId;
	}

	public void setLopId(Integer lopId) {
		this.lopId = lopId;
	}

	public String getMaQuanLy() {
		return this.maQuanLy;
	}

	public void setMaQuanLy(String maQuanLy) {
		this.maQuanLy = maQuanLy;
	}

	public Integer getNganhHocId() {
		return this.nganhHocId;
	}

	public void setNganhHocId(Integer nganhHocId) {
		this.nganhHocId = nganhHocId;
	}

	public Integer getTrangThaiId() {
		return this.trangThaiId;
	}

	public void setTrangThaiId(Integer trangThaiId) {
		this.trangThaiId = trangThaiId;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

}