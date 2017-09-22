package vn.edu.hou.sis.validator;

import java.util.regex.Matcher;

import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import vn.edu.hou.sis.entities.HoSoSv;
import vn.edu.hou.sis.services.CanBoTuyenSinhService;

public class HoSoSVFormValidator implements Validator{

	@Autowired
	private CanBoTuyenSinhService service;
	
	
	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return HoSoSv.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
		
		String mobilePattern = "^[0-9]{9,12}$";
		String cmndPattern = "^([0-9]{9}|[0-9]{12})$";
		HoSoSv creating = (HoSoSv) target;
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "cmnd", "error.hoSoSV.cmnd.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "diaChi", "error.hoSoSV.diaChi.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "error.hoSoSV.email.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "hoTen", "error.hoSoSV.hoTen.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "sdt", "error.hoSoSV.sdt.required");
		
		HoSoSv hoSoSVByEmail = service.findByEmail(creating.getEmail());
		if (hoSoSVByEmail != null) {
			errors.reject("email", "error.hoSoSV.email.conflict");
		}
		HoSoSv hoSoSVBySDT = service.findBySDT(creating.getSdt());
		if (hoSoSVBySDT != null) {
			errors.reject("sdt", "error.hoSoSV.sdt.conflict");
		}
		HoSoSv hoSoSVByCMND = service.findByCmnd(creating.getCmnd());
		if (hoSoSVByCMND != null) {
			errors.reject("cmnd", "error.hoSoSV.cmnd.conflict");
		}
		Pattern pattern = Pattern.compile(mobilePattern);
		Matcher matcher = pattern.matcher(creating.getSdt());
		if (!matcher.matches()) {
			errors.reject("sdt", "error.hoSoSV.sdt.invalid");
		}
		pattern = Pattern.compile(cmndPattern);
		matcher = pattern.matcher(creating.getCmnd());
		if (!matcher.matches()) {
			errors.reject("cmnd", "error.hoSoSV.cmnd.invalid");
		}
		
	}

}
