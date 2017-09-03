package vn.edu.hou.sis.entities;

import java.io.Serializable;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.persistence.*;
import java.util.Date;


/**
 * The persistent class for the ho_so_sv database table.
 * 
 */
@Entity
@Table(name="ho_so_sv")
@NamedQuery(name="HoSoSv.findAll", query="SELECT h FROM HoSoSv h")
public class HoSoSv implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private Integer id;

	@Column(name="cb_tuyen_sinh_username")
	private String cbTuyenSinhUsername;
//<<<<<<< HEAD

//=======
	
	@Column(name="cmnd")
//>>>>>>> origin/longnn
	private String cmnd;

	@Column(name="dan_toc")
	private String danToc;

	@Column(name="dia_chi")
	private String diaChi;

	@Column(name="email")
	private String email;

	@Column(name="gioi_tinh")
	private Integer gioiTinh;
	
	@Column(name="chuyen_nganh")
	private String chuyenNganh;

	@Column(name="nam_tot_nghiep")
	private Integer namTotNghiep;

	@Column(name="noi_cap")
	private String noiCap;

	@Column(name="trinh_do")
	private String trinhDo;

	@Column(name="ho_khau_thuong_tru")
	private String hoKhauThuongTru;

	@Column(name="ho_ten")
	private String hoTen;

	@Column(name="is_deleted")
	private Integer isDeleted;

	@Column(name="nganh_hoc_id")
	private Integer nganhHocId;

	@Temporal(TemporalType.DATE)
	@Column(name="ngay_lap")
	private Date ngayLap;

	@Temporal(TemporalType.DATE)
	@Column(name="ngay_sinh")
	private Date ngaySinh;

	@Column(name="ngoai_ngu")
	private String ngoaiNgu;

	@Column(name="noi_sinh")
	private String noiSinh;

	@Column(name="sdt")
	private String sdt;

	

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCbTuyenSinhUsername() {
		return cbTuyenSinhUsername;
	}

	public void setCbTuyenSinhUsername(String cbTuyenSinhUsername) {
		this.cbTuyenSinhUsername = cbTuyenSinhUsername;
	}

	public String getCmnd() {
		return cmnd;
	}

	public void setCmnd(String cmnd) {
		this.cmnd = cmnd;
	}

	public String getDanToc() {
		return danToc;
	}

	public void setDanToc(String danToc) {
		this.danToc = danToc;
	}

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Integer getGioiTinh() {
		return gioiTinh;
	}

	public void setGioiTinh(Integer gioiTinh) {
		this.gioiTinh = gioiTinh;
	}

	public String getChuyenNganh() {
		return chuyenNganh;
	}

	public void setChuyenNganh(String chuyenNganh) {
		this.chuyenNganh = chuyenNganh;
	}

	public Integer getNamTotNghiep() {
		return namTotNghiep;
	}

	public void setNamTotNghiep(Integer namTotNghiep) {
		this.namTotNghiep = namTotNghiep;
	}

	public String getNoiCap() {
		return noiCap;
	}

	public void setNoiCap(String noiCap) {
		this.noiCap = noiCap;
	}

	public String getTrinhDo() {
		return trinhDo;
	}

	public void setTrinhDo(String trinhDo) {
		this.trinhDo = trinhDo;
	}

	public String getHoKhauThuongTru() {
		return hoKhauThuongTru;
	}

	public void setHoKhauThuongTru(String hoKhauThuongTru) {
		this.hoKhauThuongTru = hoKhauThuongTru;
	}

	public String getHoTen() {
		return hoTen;
	}

	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}

	public Integer getIsDeleted() {
		return isDeleted;
	}

	public void setIsDeleted(Integer isDeleted) {
		this.isDeleted = isDeleted;
	}

	public Integer getNganhHocId() {
		return nganhHocId;
	}

	public void setNganhHocId(Integer nganhHocId) {
		this.nganhHocId = nganhHocId;
	}

	public Date getNgayLap() {
		return ngayLap;
	}

	public void setNgayLap(Date ngayLap) {
		this.ngayLap = ngayLap;
	}

	public String getNgoaiNgu() {
		return ngoaiNgu;
	}

	public void setNgoaiNgu(String ngoaiNgu) {
		this.ngoaiNgu = ngoaiNgu;
	}

	public String getNoiSinh() {
		return noiSinh;
	}

	public void setNoiSinh(String noiSinh) {
		this.noiSinh = noiSinh;
	}

	public String getSdt() {
		return sdt;
	}

	public void setSdt(String sdt) {
		this.sdt = sdt;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public Date getNgaySinh() {
		return ngaySinh;
	}

	public void setNgaySinh(String ngaySinh) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		try {
			this.ngaySinh = sdf.parse(ngaySinh);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public String toString() {
		return "HoSoSv [id=" + id + ", cbTuyenSinhUsername=" + cbTuyenSinhUsername + ", cmnd=" + cmnd + ", danToc="
				+ danToc + ", diaChi=" + diaChi + ", email=" + email + ", gioiTinh=" + gioiTinh + ", chuyenNganh="
				+ chuyenNganh + ", namTotNghiep=" + namTotNghiep + ", noiCap=" + noiCap + ", trinhDo=" + trinhDo
				+ ", hoKhauThuongTru=" + hoKhauThuongTru + ", hoTen=" + hoTen + ", isDeleted=" + isDeleted
				+ ", nganhHocId=" + nganhHocId + ", ngayLap=" + ngayLap + ", ngaySinh=" + ngaySinh + ", ngoaiNgu="
				+ ngoaiNgu + ", noiSinh=" + noiSinh + ", sdt=" + sdt + "]";
//>>>>>>> origin/longnn
	}
	
	


}