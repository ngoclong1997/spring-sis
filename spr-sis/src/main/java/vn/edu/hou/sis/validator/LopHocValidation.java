package vn.edu.hou.sis.validator;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import vn.edu.hou.sis.entities.KhoaHoc;
import vn.edu.hou.sis.entities.LopHoc;
import vn.edu.hou.sis.entities.NganhHoc;
import vn.edu.hou.sis.services.KhoaHocService;
import vn.edu.hou.sis.services.LopHocService;
import vn.edu.hou.sis.services.NganhHocService;

@Component
public class LopHocValidation implements Validator {

	@Autowired
	private NganhHocService nganhHocService;
	@Autowired
	private KhoaHocService khoaHocServices;
	@Autowired
	private LopHocService lopHocService;
	@SuppressWarnings("unused")
	private Logger logger = LoggerFactory.getLogger(LopHocValidation.class);

	@Override
	public boolean supports(Class<?> arg0) {
		return LopHoc.class.isAssignableFrom(arg0);
	}

	private void checkKhoaHocId(int id, Errors arg1) {
		if (id == -1) {
			arg1.rejectValue("khoaHocId", "error.lopHoc.khoaHocId.empty");
			return;
		}
		if (khoaHocServices.isDeleted(Integer.toString(id))) {
			arg1.rejectValue("khoaHocId", "error.lopHoc.khoaHocId.deleted");
		}
	}

	private void checkNganhHocId(int id, Errors arg1) {
		if (id == -1) {
			arg1.rejectValue("nganhHocId", "error.lopHoc.nganhHocId.empty");
			return;
		}
		if (nganhHocService.isDeleted(Integer.toString(id))) {
			arg1.rejectValue("nganhHocId", "error.lopHoc.nganhHocId.deleted");
		}
	}

	@Override
	public void validate(Object arg0, Errors arg1) {
		LopHoc lopHoc = (LopHoc) arg0;

		checkNganhHocId(lopHoc.getNganhHocId(), arg1);
		checkKhoaHocId(lopHoc.getKhoaHocId(), arg1);
		if(arg1.hasErrors()) return;
		
		KhoaHoc k = khoaHocServices.findById(lopHoc.getKhoaHocId().toString());
		NganhHoc nganh = nganhHocService.findById(Integer.toString(lopHoc.getNganhHocId()));
		lopHoc.setCode(lopHocService.genCode(lopHoc, k, nganh));
		
		if (lopHocService.isExist(lopHoc)) {
			arg1.rejectValue("code", "error.lopHoc.isExist");
		}

	}

}
