package vn.edu.hou.sis.services;

import java.util.List;

import vn.edu.hou.sis.entities.HoSoSv;
import vn.edu.hou.sis.entities.NganhHoc;
import vn.edu.hou.sis.exceptions.HoSoSVNotFound;
import vn.edu.hou.sis.exceptions.NganhHocNotFound;

public interface CanBoTuyenSinhService {
	public List<HoSoSv> findByCbTuyenSinhUsername(String username);
	public HoSoSv create(HoSoSv hssv);
	public HoSoSv deleteHoSoById(Integer id) throws HoSoSVNotFound;
	public List<HoSoSv> findAll();
	public List<NganhHoc> findAllNganhHoc();
	public HoSoSv findById(Integer id);
	public void updateHoSoSV(HoSoSv hoSoSV) throws HoSoSVNotFound;
	public NganhHoc findNganhHocById(Integer id) throws NganhHocNotFound;
	public List<HoSoSv> findByCmnd(String cmnd);
	public List<HoSoSv> findBySDT(String sdt);
	public List<HoSoSv> findByEmail(String email);
	public void updateTrangThaiHoSo(Integer id);
	public String findKyHieuByNganhHocId(Integer nganhHocId);
	public Integer findLopIdByCode(String code);
}
