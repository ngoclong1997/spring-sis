package vn.edu.hou.sis.services;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import vn.edu.hou.sis.entities.KhoaHoc;
import vn.edu.hou.sis.exceptions.KhoaHocNotFound;
import vn.edu.hou.sis.repositories.KhoaHocRespository;

@Service
public class KhoaHocServiceImpl implements KhoaHocService {

	@Resource
	private KhoaHocRespository khoaHocRepository;

	@Override
	public KhoaHoc create(KhoaHoc khoaHoc) {
		return khoaHocRepository.save(khoaHoc);
	}

	@Override
	public KhoaHoc delete(String id) throws KhoaHocNotFound {
		KhoaHoc khoaHoc = null;
		try {
			int iId = Integer.parseInt(id);
			khoaHoc = khoaHocRepository.findKhoaHocById(iId);
			if (khoaHoc == null)
				throw new KhoaHocNotFound();
			khoaHoc.setIsDeleted(1);
			khoaHocRepository.save(khoaHoc);
		} catch (Exception e) {
		}
		
		return null;
	}

	@Override
	public KhoaHoc findByTenKhoaHoc(String tenKhoa) {
		return khoaHocRepository.findKhoaHocByTenKhoaHoc(tenKhoa);
	}

	@Override
	public KhoaHoc findById(String id) {
		int iId;
		try {
			iId = Integer.parseInt(id);
			return khoaHocRepository.findKhoaHocById(iId);
		} catch (Exception e) {
		}
		return null;
	}

	@Override
	public List<KhoaHoc> findAll() {
		return khoaHocRepository.findKhoaHocByIsdeleted();
	}

	@Override
	public KhoaHoc save(KhoaHoc khoaHoc) {
		return khoaHocRepository.save(khoaHoc);
	}

	@Override
	public boolean isDeleted(String id) {
		KhoaHoc temp = null;
		try {
			int iId = Integer.parseInt(id);
			temp = khoaHocRepository.findKhoaHocById(iId);
		} catch (Exception e) {
			return true;
		}

		if (temp == null)
			return true;
		return temp.getIsDeleted() == 1;
	}

	@Override
	public boolean isExist(KhoaHoc khoaHoc) {
		KhoaHoc temp= khoaHocRepository.findByNamBatDauAndNganhHocId(khoaHoc.getNamBatDau(), khoaHoc.getNganhHocId());
		if(temp != null && khoaHoc.getId() != temp.getId()) return true;
		return false;
	}

	@Override
	public List<KhoaHoc> findKhoaHocByNganhHocId(String nganhHocId) {
		List<KhoaHoc> list = null;
		try {
			int iId = Integer.parseInt(nganhHocId);
			list = khoaHocRepository.findKhoaHocByNganhHocId(iId);
		} catch (Exception e) {
			return null;
		}
		return list;
	}

	@Override
	public boolean isDeleteNganhHoc(String nganhHocId) {
		List<KhoaHoc> list = null;
		try {
			int iId = Integer.parseInt(nganhHocId);
			list = khoaHocRepository.findKhoaHocByNganhHocId(iId);
		} catch (Exception e) {
			return false;
		}
		return list == null;
	}

}
