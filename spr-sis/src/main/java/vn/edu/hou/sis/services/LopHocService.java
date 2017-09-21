package vn.edu.hou.sis.services;

import java.util.List;

import vn.edu.hou.sis.entities.LopHoc;
import vn.edu.hou.sis.exceptions.LopHocNotFound;

public interface LopHocService {
	public LopHoc create(LopHoc lopHoc);

	public LopHoc delete(String id) throws LopHocNotFound;

	public LopHoc findByCode(String code);

	public LopHoc findById(String id);

	public List<LopHoc> findAll();

	public LopHoc save(LopHoc lopHoc);

	public boolean isDeleted(String id);

	public boolean isExist(LopHoc lopHoc);
}
