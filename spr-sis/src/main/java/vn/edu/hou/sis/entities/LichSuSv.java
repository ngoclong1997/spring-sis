package vn.edu.hou.sis.entities;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;


/**
 * The persistent class for the lich_su_sv database table.
 * 
 */
@Entity
@Table(name="lich_su_sv")
@NamedQuery(name="LichSuSv.findAll", query="SELECT l FROM LichSuSv l")
public class LichSuSv implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private Integer id;

	@Column(name="is_deleted")
	private Integer isDeleted;

	@Temporal(TemporalType.DATE)
	@Column(name="ngay_cap_nhat")
	private Date ngayCapNhat;

	@Column(name="sv_id")
	private Integer svId;

	@Column(name="trang_thai_cu_id")
	private Integer trangThaiCuId;

	@Column(name="trang_thai_moi_id")
	private Integer trangThaiMoiId;

	public LichSuSv() {
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

	public Date getNgayCapNhat() {
		return this.ngayCapNhat;
	}

	public void setNgayCapNhat(Date ngayCapNhat) {
		this.ngayCapNhat = ngayCapNhat;
	}

	public Integer getSvId() {
		return this.svId;
	}

	public void setSvId(Integer svId) {
		this.svId = svId;
	}

	public Integer getTrangThaiCuId() {
		return this.trangThaiCuId;
	}

	public void setTrangThaiCuId(Integer trangThaiCuId) {
		this.trangThaiCuId = trangThaiCuId;
	}

	public Integer getTrangThaiMoiId() {
		return this.trangThaiMoiId;
	}

	public void setTrangThaiMoiId(Integer trangThaiMoiId) {
		this.trangThaiMoiId = trangThaiMoiId;
	}

}