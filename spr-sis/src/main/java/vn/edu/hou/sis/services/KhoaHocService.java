package vn.edu.hou.sis.services;

import java.util.List;

import vn.edu.hou.sis.entities.KhoaHoc;
import vn.edu.hou.sis.exceptions.KhoaHocNotFound;

public interface KhoaHocService {
	public KhoaHoc create(KhoaHoc KhoaHoc);

	public KhoaHoc delete(String id) throws KhoaHocNotFound;

	public KhoaHoc findByTenKhoaHoc(String tenKhoa);
	
	public KhoaHoc findById(String id);
	
	public List<KhoaHoc> findAll();

	public KhoaHoc save(KhoaHoc khoaHoc);

	public boolean isDeleted(String id);
	
	public boolean isExist(KhoaHoc khoaHoc);
	
	public List<KhoaHoc> findKhoaHocByNganhHocId(String nganhHocId);
	
	public boolean isDeleteNganhHoc(String nganhHocId);
}
