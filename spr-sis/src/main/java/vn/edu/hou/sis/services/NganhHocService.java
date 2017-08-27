package vn.edu.hou.sis.services;

import java.util.List;

import vn.edu.hou.sis.entities.NganhHoc;
import vn.edu.hou.sis.exceptions.NganhHocNotFound;

public interface NganhHocService {
	public NganhHoc create(NganhHoc nganhHoc);

	public NganhHoc delete(String tenNganh) throws NganhHocNotFound;

	public NganhHoc findByTenNganh(String tenNganh);
	
	public List<NganhHoc> findAll();
}
