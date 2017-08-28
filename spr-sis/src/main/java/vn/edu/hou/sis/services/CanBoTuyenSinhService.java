package vn.edu.hou.sis.services;

import java.util.List;

import vn.edu.hou.sis.entities.HoSoSv;
import vn.edu.hou.sis.exceptions.HoSoSVNotFound;

public interface CanBoTuyenSinhService {
	public List<HoSoSv> findByCbTuyenSinhUsername(String username);
	public HoSoSv create(HoSoSv hssv);
	public HoSoSv delete(String cmnd) throws HoSoSVNotFound;
	public List<HoSoSv> findAll();
}
