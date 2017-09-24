package vn.edu.hou.sis.validator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import vn.edu.hou.sis.entities.KhoaHoc;
import vn.edu.hou.sis.services.KhoaHocService;

public class KhoaHocValidation implements Validator{

	@Autowired
	private KhoaHocService khoaHocServices;
	
	@Override
	public boolean supports(Class<?> arg0) {
		return KhoaHoc.class.isAssignableFrom(arg0);
	}

	@Override
	public void validate(Object arg0, Errors arg1) {
		KhoaHoc khoaHoc = (KhoaHoc) arg0;
		
	}

}
