package vn.edu.hou.sis.services;

import java.util.List;

import vn.edu.hou.sis.entities.*;


import vn.edu.hou.sis.entities.SinhVien;

public interface SinhVienService {

	public List<TrangThaiSv> findAllTrangThaiSv();
	public List<VSinhVien> findAllViewSV();
	public SinhVien findSinhVienById(String id);
	public boolean isDeleted(String id);
	public void save(SinhVien sinhVien);
	public List<VSinhVien> findAll();
	public SinhVien create (SinhVien sinhVien);
}
