package vn.edu.hou.sis.services;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vn.edu.hou.sis.entities.HoSoSv;
import vn.edu.hou.sis.exceptions.HoSoSVNotFound;
import vn.edu.hou.sis.exceptions.UserNotFound;
import vn.edu.hou.sis.repositories.HoSoSVRepository;

@Service
public class CanBoTuyenSinhServiceImpl implements CanBoTuyenSinhService {

	
	@Resource
	private HoSoSVRepository hoSoSVRepository;
	
	
	@Override
	@Transactional
	public List<HoSoSv> findByCbTuyenSinhUsername(String username) {
		return hoSoSVRepository.findByCbTuyenSinhUsername(username);
	}

	@Override
	@Transactional
	public HoSoSv create(HoSoSv hssv) {
		HoSoSv createdHssv = new HoSoSv();
		return hoSoSVRepository.save(createdHssv);
	}

	@Override
	@Transactional(rollbackFor=HoSoSVNotFound.class)
	public HoSoSv delete(String cmnd) throws HoSoSVNotFound {
		HoSoSv hssv = null;
		hssv = hoSoSVRepository.findByCmnd(cmnd);
		if (hssv == null)
			throw new HoSoSVNotFound();
		hoSoSVRepository.delete(hssv);
		return hssv;
	}

	@Override
	public List<HoSoSv> findAll() {
		return hoSoSVRepository.findAll();
	}

}
