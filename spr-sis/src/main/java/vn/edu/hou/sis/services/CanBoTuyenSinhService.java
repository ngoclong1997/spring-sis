package vn.edu.hou.sis.services;

import java.util.List;

import vn.edu.hou.sis.entities.HoSoSv;
import vn.edu.hou.sis.entities.NganhHoc;
import vn.edu.hou.sis.exceptions.HoSoSVNotFound;

public interface CanBoTuyenSinhService {
	public List<HoSoSv> findByCbTuyenSinhUsername(String username);
	public HoSoSv create(HoSoSv hssv);
	public HoSoSv delete(String cmnd) throws HoSoSVNotFound;
	public List<HoSoSv> findAll();
	public List<NganhHoc> findAllNganhHoc();
	public HoSoSv findById(Integer id);
	public void update(HoSoSv hoSoSV) throws HoSoSVNotFound;
}
