package vn.edu.hou.sis.entities;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the trinh_do_sv database table.
 * 
 */
@Entity
@Table(name="trinh_do_sv")
@NamedQuery(name="TrinhDoSv.findAll", query="SELECT t FROM TrinhDoSv t")
public class TrinhDoSv implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private Integer id;

	@Column(name="chuyen_nganh")
	private String chuyenNganh;

	@Column(name="is_deleted")
	private Integer isDeleted;

	@Column(name="nam_tot_nghiep")
	private Integer namTotNghiep;

	@Column(name="noi_cap")
	private String noiCap;

	@Column(name="trinh_do")
	private String trinhDo;

	public TrinhDoSv() {
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
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

	public String getTrinhDo() {
		return this.trinhDo;
	}

	public void setTrinhDo(String trinhDo) {
		this.trinhDo = trinhDo;
	}

}