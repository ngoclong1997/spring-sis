package vn.edu.hou.sis.validator;

import java.util.Calendar;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import vn.edu.hou.sis.entities.KhoaHoc;
import vn.edu.hou.sis.services.KhoaHocService;

@Component
public class KhoaHocValidation implements Validator {

	@Autowired
	private KhoaHocService khoaHocServices;

	// Calendar cal = Calendar.getInstance();

	@Override
	public boolean supports(Class<?> arg0) {
		return KhoaHoc.class.isAssignableFrom(arg0);
	}

	private void checkTenKhoaHoc(KhoaHoc temp, Errors error) {
		String tenKhoaHoc = temp.getTenKhoaHoc();
		if (tenKhoaHoc.trim().isEmpty() || tenKhoaHoc.trim().length() < 10 || tenKhoaHoc.trim().length() > 30) {
			error.rejectValue("tenKhoaHoc", "error.khoaHoc.tenKhoaHoc.size");
			return;
		}
		KhoaHoc khoaHoc = khoaHocServices.findByTenKhoaHoc(tenKhoaHoc);
		if (khoaHoc != null && temp.getId() != khoaHoc.getId()) {
			error.rejectValue("tenKhoaHoc", "error.khoaHoc.tenKhoaHoc.conflict");
			return;
		}
	}

	private void checkNam(int namBatDau, int namKetThuc, Errors error) {
		if (namBatDau < Calendar.YEAR) {
			error.rejectValue("namBatDau", "error.khoaHoc.namBatDau.start");
		}
		if (namKetThuc - namBatDau < 2) {
			error.rejectValue("namKetThuc", "error.khoaHoc.namKetThuc.start");
		}
	}

	private void checkNganhHocId(Integer nganhHocId, Errors arg1) {
		if (nganhHocId == -1) {
			arg1.rejectValue("nganhHocId", "error.khoaHoc.nganhHocId.select");
		}
	}

	@Override
	public void validate(Object arg0, Errors arg1) {
		KhoaHoc khoaHoc = (KhoaHoc) arg0;
		checkTenKhoaHoc(khoaHoc, arg1);
		checkNam(khoaHoc.getNamBatDau(), khoaHoc.getNamKetThuc(), arg1);
		checkNganhHocId(khoaHoc.getNganhHocId(), arg1);
		chechExist(khoaHoc, arg1);
	}

	private void chechExist(KhoaHoc khoaHoc, Errors arg1) {
		if (khoaHocServices.isExist(khoaHoc)) {
			arg1.rejectValue("namBatDau", "error.khoaHoc.exist");
		}
	}

}
