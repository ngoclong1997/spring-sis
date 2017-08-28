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
	public NganhHoc delete(String id) throws NganhHocNotFound {
		NganhHoc nganh = nganhHocRepository.findNganhHocById(Integer.parseInt(id));
		if(nganh == null) throw new NganhHocNotFound();
		nganh.setIsDeleted(1);
		nganhHocRepository.save(nganh);
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

	@Override
	public NganhHoc findById(String id) {
		return nganhHocRepository.findNganhHocById(Integer.parseInt(id));
	}

	@Override
	public NganhHoc save(NganhHoc nganhHoc) {
		System.out.println(nganhHoc.getTenNganh() + nganhHoc.getId() + nganhHoc.getKyHieu());
		nganhHocRepository.save(nganhHoc);
		
		return null;
	}

	@Override
	public boolean isDeleted(String id) {
		NganhHoc temp;
		try{
			int iId = Integer.parseInt(id);
			temp = nganhHocRepository.findNganhHocById(iId);
		}catch (Exception e) {
			return true;
		}
		 
		if(temp == null) return true;
		return temp.getIsDeleted() == 1;
	}

	

}
