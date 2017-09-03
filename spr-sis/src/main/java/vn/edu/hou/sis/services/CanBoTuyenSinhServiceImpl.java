package vn.edu.hou.sis.services;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vn.edu.hou.sis.entities.HoSoSv;
import vn.edu.hou.sis.entities.NganhHoc;
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
		HoSoSv createdHssv = hssv;
		return hoSoSVRepository.save(createdHssv);
	}

	@Override
	@Transactional(rollbackFor = HoSoSVNotFound.class)
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

	@Override
	public List<NganhHoc> findAllNganhHoc() {
		return hoSoSVRepository.findAllNganhHoc();
	}

	@Override
	public HoSoSv findById(Integer id) {
		return hoSoSVRepository.findById(id);
	}

	@Override
	public void update(HoSoSv hoSoSV) throws HoSoSVNotFound {
		HoSoSv hssv = null;
		hssv = hoSoSVRepository.findById(hoSoSV.getId());
		if (hssv == null)
			throw new HoSoSVNotFound();
		hoSoSVRepository.updateHoSoById(hoSoSV.getCbTuyenSinhUsername(), hoSoSV.getChuyenNganh(), hoSoSV.getCmnd(),
				hoSoSV.getDanToc(), hoSoSV.getDiaChi(), hoSoSV.getEmail(), hoSoSV.getGioiTinh(),
				hoSoSV.getHoKhauThuongTru(), hoSoSV.getHoTen(), hoSoSV.getIsDeleted(), hoSoSV.getNamTotNghiep(),
				hoSoSV.getNganhHocId(), hoSoSV.getNgayLap(), hoSoSV.getNgaySinh(), hoSoSV.getNgoaiNgu(),
				hoSoSV.getNoiCap(), hoSoSV.getNoiSinh(), hoSoSV.getSdt(), hoSoSV.getTrinhDo(), hoSoSV.getId());

	}

}
