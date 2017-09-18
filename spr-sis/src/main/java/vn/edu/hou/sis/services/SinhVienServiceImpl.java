package vn.edu.hou.sis.services;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import vn.edu.hou.sis.entities.SinhVien;
import vn.edu.hou.sis.repositories.SinhVienRepository;

@Service
public class SinhVienServiceImpl implements SinhVienService{

	@Resource
	SinhVienRepository sinhVienRepository;
	
	@Override
	public SinhVien create(SinhVien sinhVien) {
		SinhVien created = sinhVien;
		return sinhVienRepository.save(created);
	}
	
}
