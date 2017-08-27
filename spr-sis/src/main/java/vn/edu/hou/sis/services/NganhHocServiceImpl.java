package vn.edu.hou.sis.services;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vn.edu.hou.sis.entities.NganhHoc;
import vn.edu.hou.sis.exceptions.NganhHocNotFound;
import vn.edu.hou.sis.repositories.NganhHocRepository;

@Service
public class NganhHocServiceImpl implements NganhHocService{

	@Resource
	private NganhHocRepository nganhHocRepository;
	
	@Override
	@Transactional
	public NganhHoc create(NganhHoc nganhHoc) {
		NganhHoc nganh = nganhHoc;
		return nganhHocRepository.save(nganh);
	}

	@Override
	@Transactional(rollbackFor = NganhHocNotFound.class)
	public NganhHoc delete(String tenNganh) throws NganhHocNotFound {
		NganhHoc nganh = findByTenNganh(tenNganh);
		if(nganh == null) throw new NganhHocNotFound();
		nganhHocRepository.delete(nganh);
		return nganh;
	}

	@Override
	public List<NganhHoc> findAll() {
		return nganhHocRepository.findAll();
	}

	@Override
	public NganhHoc findByTenNganh(String tenNganh) {
		return nganhHocRepository.findNganhHocByTenNganh(tenNganh);
	}

	

}
