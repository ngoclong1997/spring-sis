package vn.edu.hou.sis.validator;

import java.util.Set;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;
import org.springframework.validation.annotation.Validated;

import vn.edu.hou.sis.entities.NganhHoc;
import vn.edu.hou.sis.services.NganhHocService;

@Validated
public class NganhHocValidation implements Validator {

	@Autowired
	private NganhHocService nganhHocService;

	@Override
	public boolean supports(Class<?> clazz) {
		return NganhHoc.class.isAssignableFrom(clazz);
	}

	Logger logger = LoggerFactory.getLogger(NganhHocValidation.class);

	@Override
	public void validate(Object target, Errors errors) {
		NganhHoc nganhHoc = (NganhHoc) target;
		tenNganhValidaton(nganhHoc, errors);
		kyHieuValidaton(nganhHoc, errors);
	}

	private void kyHieuValidaton(NganhHoc nganhHoc, Errors errors) {
		String kyHieu = nganhHoc.getKyHieu();

		if (errors.hasFieldErrors("kyHieu")) {
			return;
		}
		
		if (kyHieu.length() > 10 || kyHieu.length() < 2) {
			errors.rejectValue("kyHieu", "error.nganhHoc.kyHieu.size");
			ValidationUtils.rejectIfEmptyOrWhitespace(errors, "kyHieu", "error.nganhHoc.kyHieu.size");
			return;
		}
		
		NganhHoc temp = nganhHocService.findByKyHieu(kyHieu);
		if (temp != null && nganhHoc.getId() != temp.getId()) {
			ValidationUtils.rejectIfEmptyOrWhitespace(errors, "kyHieu", "error.nganhHoc.kyHieu.conflict");
			return;
		}
	}

	private void tenNganhValidaton(NganhHoc nganhHoc, Errors errors) {
		String tenNganh = nganhHoc.getTenNganh();
		
		if (errors.hasFieldErrors("tenNganh")) {
			return;
		}
		
		if (tenNganh.length() > 30 || tenNganh.length() < 10) {
			errors.rejectValue("tenNganh", "error.nganhHoc.tenNganh.size");
			ValidationUtils.rejectIfEmptyOrWhitespace(errors, "tenNganh", "error.nganhHoc.tenNganh.size");
			return;
		}
		
		NganhHoc temp = nganhHocService.findByTenNganh(tenNganh);
		if (temp != null && nganhHoc.getId() != temp.getId()) {
			ValidationUtils.rejectIfEmptyOrWhitespace(errors, "tenNganh", "error.nganhHoc.tenNganh.conflict");
			return;
		}
	}

}
