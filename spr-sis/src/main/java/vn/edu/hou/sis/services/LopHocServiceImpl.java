package vn.edu.hou.sis.services;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import vn.edu.hou.sis.entities.LopHoc;
import vn.edu.hou.sis.exceptions.LopHocNotFound;
import vn.edu.hou.sis.repositories.LopHocRespository;

@Service
public class LopHocServiceImpl implements LopHocService{

	@Resource
	private LopHocRespository lopHocRespository;
	
	@Override
	public LopHoc create(LopHoc lopHoc) {
		return lopHocRespository.save(lopHoc);
	}

	@Override
	public LopHoc delete(String id) throws LopHocNotFound {
		LopHoc lopHoc = null;
		try {
			int iId = Integer.parseInt(id);
			lopHoc = lopHocRespository.findLopHocById(iId);
			lopHoc.setIsDeleted(1);
			lopHocRespository.save(lopHoc);
		}catch(Exception e){
			throw new LopHocNotFound();
		}
		return null;
	}

	@Override
	public LopHoc findByCode(String code) {
		return lopHocRespository.findLopHocByCode(code);
	}

	@Override
	public LopHoc findById(String id) {
		LopHoc lopHoc = null;
		try {
			int iId = Integer.parseInt(id);
			lopHoc = lopHocRespository.findLopHocById(iId);
		}catch (Exception e) {
			return null;
		}
		return lopHoc;
	}

	@Override
	public List<LopHoc> findAll() {
		return lopHocRespository.findLopHocByIsDeleted();
	}

	@Override
	public LopHoc save(LopHoc lopHoc) {
		lopHocRespository.save(lopHoc);
		return null;
	}

	@Override
	public boolean isDeleted(String id) {
		LopHoc lopHoc = null;
		try {
			int iId = Integer.parseInt(id);
			lopHoc = lopHocRespository.findLopHocById(iId);
		}catch (Exception e) {
			return true;
		}
		if(lopHoc == null) return true;
		return lopHoc.getIsDeleted() == 1;
	}

	@Override
	public boolean isExist(LopHoc lopHoc) {
		List<LopHoc> list = new ArrayList<>();
		String trinhDo = lopHoc.getCode().substring(lopHoc.getCode().length() - 2, lopHoc.getCode().length());
		list = lopHocRespository.checkExist(lopHoc.getKhoaHocId(), trinhDo);
		return list.size() != 0;
	}

}