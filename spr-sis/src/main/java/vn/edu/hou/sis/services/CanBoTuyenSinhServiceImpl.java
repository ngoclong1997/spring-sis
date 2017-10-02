package vn.edu.hou.sis.services;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vn.edu.hou.sis.entities.HoSoSv;
import vn.edu.hou.sis.entities.NganhHoc;
import vn.edu.hou.sis.exceptions.HoSoSVNotFound;
import vn.edu.hou.sis.exceptions.NganhHocNotFound;
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
	public HoSoSv deleteHoSoById(Integer id) throws HoSoSVNotFound {
		HoSoSv hssv = null;
		hssv = hoSoSVRepository.findById(id);
		if (hssv == null)
			throw new HoSoSVNotFound();
		hoSoSVRepository.deleteHoSoById(id);
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
	@Transactional(rollbackFor = HoSoSVNotFound.class)
	public void updateHoSoSV(HoSoSv hoSoSV) throws HoSoSVNotFound {
		HoSoSv hssv = null;
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		hssv = hoSoSVRepository.findById(hoSoSV.getId());
		if (hssv == null)
			throw new HoSoSVNotFound();

		hoSoSVRepository.updateHoSoById(hoSoSV.getCbTuyenSinhUsername(), hoSoSV.getChuyenNganh(), hoSoSV.getCmnd(),
				hoSoSV.getDanToc(), hoSoSV.getDiaChi(), hoSoSV.getEmail(), hoSoSV.getGioiTinh(),
				hoSoSV.getHoKhauThuongTru(), hoSoSV.getHoTen(), hoSoSV.getIsDeleted(), hoSoSV.getNamTotNghiep(),
				hoSoSV.getNganhHocId(), hoSoSV.getNgayLap(), hoSoSV.getNgaySinh(), hoSoSV.getNgoaiNgu(),
				hoSoSV.getNoiCap(), hoSoSV.getNoiSinh(), hoSoSV.getSdt(), hoSoSV.getTrinhDo(), hoSoSV.getId());

	}

	@Override
	@Transactional(rollbackFor = NganhHocNotFound.class)
	public NganhHoc findNganhHocById(Integer id) throws NganhHocNotFound {
		NganhHoc nganhHoc = hoSoSVRepository.findNganhHocById(id);
		if (nganhHoc == null)
			throw new NganhHocNotFound();
		return nganhHoc;
	}

	@Override
	public List<HoSoSv> findByCmnd(String cmnd) {
		return hoSoSVRepository.findByCmnd(cmnd);
	}

	@Override
	public List<HoSoSv> findBySDT(String sdt) {
		return hoSoSVRepository.findBySDT(sdt);
	}

	@Override
	public List<HoSoSv> findByEmail(String email) {
		return hoSoSVRepository.findByEmail(email);
	}

	@Override
	@Transactional
	public void updateTrangThaiHoSo(Integer id) {
		hoSoSVRepository.updateTrangThaiHoSo(id);

	}

	@Override
	public String findKyHieuByNganhHocId(Integer nganhHocId) {
		return hoSoSVRepository.findKyHieuByNganhHocId(nganhHocId);
	}

	@Override
	public Integer findLopIdByCode(String code) {
		return hoSoSVRepository.findLopIdByCode(code);
	}

}
