package vn.edu.hou.sis.validator;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import vn.edu.hou.sis.entities.LopHoc;
import vn.edu.hou.sis.services.LopHocService;

@Component
public class LopHocValidation implements Validator {

	@Autowired
	private LopHocService lopHocServices;
	@SuppressWarnings("unused")
	private Logger logger = LoggerFactory.getLogger(LopHocValidation.class);

	@Override
	public boolean supports(Class<?> arg0) {
		return LopHoc.class.isAssignableFrom(arg0);
	}

	@Override
	public void validate(Object arg0, Errors arg1) {
		LopHoc lopHoc = (LopHoc) arg0;
		if(lopHoc.getKhoaHocId() == -1) {
			arg1.rejectValue("khoaHocId", "error.lopHoc.khoaHocId.empty");
		}
		if(lopHoc.getNganhHocId() == -1) {
			arg1.rejectValue("nganhHocId", "error.lopHoc.nganhHocId.empty");
		}
		if(lopHocServices.isExist(lopHoc)) {
			arg1.rejectValue("code", "error.lopHoc.isExist");
		}
		

	}

}
