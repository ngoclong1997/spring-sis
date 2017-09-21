package vn.edu.hou.sis.services;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vn.edu.hou.sis.entities.NganhHoc;
import vn.edu.hou.sis.exceptions.NganhHocNotFound;
import vn.edu.hou.sis.repositories.NganhHocRepository;

@Service
public class NganhHocServiceImpl implements NganhHocService {

	@Resource
	private NganhHocRepository nganhHocRepository;

	@Override
	@Transactional
	public NganhHoc create(NganhHoc nganhHoc) {
		NganhHoc nganh = nganhHoc;
		return nganhHocRepository.save(nganh);
	}

	Logger logger = LoggerFactory.getLogger(NganhHocServiceImpl.class);
	
	@Override
	@Transactional(rollbackFor = NganhHocNotFound.class)
	public NganhHoc delete(String id) throws NganhHocNotFound {
		NganhHoc nganh = null;
		try {
			int iId = Integer.parseInt(id);
			nganh = nganhHocRepository.findNganhHocById(iId);
		} catch (Exception e) {
		}

		if (nganh == null)
			throw new NganhHocNotFound();
		nganh.setIsDeleted(1);
		nganhHocRepository.save(nganh);
		return nganh;
	}

	@Override
	public List<NganhHoc> findAll() {
		return nganhHocRepository.findNganhHocByIsdeleted();
	}

	@Override
	public NganhHoc findByTenNganh(String tenNganh) {
		return nganhHocRepository.findNganhHocByTenNganh(tenNganh);
	}

	@Override
	public NganhHoc findById(String id) {
		int iId;
		try {
			iId = Integer.parseInt(id);
			return nganhHocRepository.findNganhHocById(iId);
		} catch (Exception e) {
		}
		return null;

	}

	@Override
	public NganhHoc save(NganhHoc nganhHoc) {
		// System.out.println(nganhHoc.getTenNganh() + nganhHoc.getId() +
		// nganhHoc.getKyHieu());
		nganhHocRepository.save(nganhHoc);
		return null;
	}

	@Override
	public boolean isDeleted(String id) {
		NganhHoc temp = null;
		try {
			int iId = Integer.parseInt(id);
			temp = nganhHocRepository.findNganhHocById(iId);
		} catch (Exception e) {
			return true;
		}

		if (temp == null)
			return true;
		return temp.getIsDeleted() == 1;
	}

	@Override
	public NganhHoc findByKyHieu(String kyHieu) {
		NganhHoc found = null;
		found = nganhHocRepository.findNganhHocByKyHieu(kyHieu);
		return found;
	}

}
