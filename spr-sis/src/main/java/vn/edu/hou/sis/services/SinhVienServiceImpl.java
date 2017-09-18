package vn.edu.hou.sis.services;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import vn.edu.hou.sis.entities.SinhVien;
import vn.edu.hou.sis.entities.TrangThaiSv;
import vn.edu.hou.sis.entities.VSinhVien;
import vn.edu.hou.sis.repositories.SinhVienRepository;
import vn.edu.hou.sis.repositories.TrangThaiSvRepository;

@Service
public class SinhVienServiceImpl implements SinhVienService{
	
	@Resource
	private SinhVienRepository  sinhVienRepository ;
	
	@Resource
	private TrangThaiSvRepository trangThaiSvRepository;

	@Override
	public List<TrangThaiSv> findAllTrangThaiSv() {
		return trangThaiSvRepository.findAll();
	}

	@Override
	public List<VSinhVien> findAllViewSV() {
		return sinhVienRepository .findAllViewSV();
	}

	@Override
	public SinhVien findSinhVienById(String id) {
		int iId;
		try {
			iId = Integer.parseInt(id);
			return sinhVienRepository .findSinhVienById(iId);
		} catch (Exception e) {
		}
		return null;
	}
	
	@Override
	public boolean isDeleted(String id) {
		SinhVien temp = null;
		try {
			int iId = Integer.parseInt(id);
			temp = sinhVienRepository .findSinhVienById(iId);
		} catch (Exception e) {
			return true;
		}

		if (temp == null)
			return true;
		return temp.getIsDeleted() == 1;
	}

	@Override
	public void save(SinhVien sinhVien) {
		sinhVienRepository .save(sinhVien);
	}

	@Override
	public List<VSinhVien> findAll() {
		return sinhVienRepository .findAllViewSV();
	}
	
	@Override
	public SinhVien create(SinhVien sinhVien) {
		SinhVien created = sinhVien;
		return sinhVienRepository .save(created);
	}
	
}
