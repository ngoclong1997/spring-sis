package vn.edu.hou.sis.validator;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import vn.edu.hou.sis.entities.NganhHoc;
import vn.edu.hou.sis.services.NganhHocService;


@Component
public class NganhHocValidation implements Validator {

	@Autowired
	private NganhHocService nganhHocService;
	
	@SuppressWarnings("unused")
	private Logger logger = LoggerFactory.getLogger(NganhHocValidation.class);

	@Override
	public boolean supports(Class<?> clazz) {
		return NganhHoc.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		NganhHoc nganhHoc = (NganhHoc) target;
		checkTenNganh(nganhHoc, errors);
		checkKyHieu(nganhHoc, errors);
	}

	private void checkKyHieu(NganhHoc nganhHoc, Errors errors) {
		String kyHieu = nganhHoc.getKyHieu();

		if (errors.hasFieldErrors("kyHieu")) {
			return;
		}

		if (kyHieu.length() > 10 || kyHieu.length() < 2) {
			errors.rejectValue("kyHieu", "error.nganhHoc.kyHieu.size");
			return;
		}

		NganhHoc temp = nganhHocService.findByKyHieu(kyHieu);
		if (temp != null && nganhHoc.getId() != temp.getId()) {
			errors.rejectValue("kyHieu", "error.nganhHoc.kyHieu.conflict");
			return;
		}
	}

	private void checkTenNganh(NganhHoc nganhHoc, Errors errors) {
		String tenNganh = nganhHoc.getTenNganh();

		if (errors.hasFieldErrors("tenNganh")) {
			return;
		}

		if (tenNganh.length() > 30 || tenNganh.length() < 5) {
			errors.rejectValue("tenNganh", "error.nganhHoc.tenNganh.size");
//			ValidationUtils.rejectIfEmptyOrWhitespace(errors, "tenNganh", "error.nganhHoc.tenNganh.size");
			return;
		}

		NganhHoc temp = nganhHocService.findByTenNganh(tenNganh);
		if (temp != null && nganhHoc.getId() != temp.getId()) {
			errors.rejectValue("tenNganh", "error.nganhHoc.tenNganh.conflict");
//			ValidationUtils.rejectIfEmptyOrWhitespace(errors, "tenNganh", "error.nganhHoc.tenNganh.conflict");
			return;
		}
	}

}