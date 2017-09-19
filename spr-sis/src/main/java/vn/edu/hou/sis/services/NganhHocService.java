package vn.edu.hou.sis.services;

import java.util.List;

import vn.edu.hou.sis.entities.NganhHoc;
import vn.edu.hou.sis.exceptions.NganhHocNotFound;

public interface NganhHocService {
	public NganhHoc create(NganhHoc nganhHoc);

	public NganhHoc delete(String id) throws NganhHocNotFound;

	public NganhHoc findByTenNganh(String tenNganh);
	
	public NganhHoc findByKyHieu(String kyHieu);
	
	public NganhHoc findById(String id);
	
	public List<NganhHoc> findAll();

	public NganhHoc save(NganhHoc nganhHoc);

	public boolean isDeleted(String id);
}
