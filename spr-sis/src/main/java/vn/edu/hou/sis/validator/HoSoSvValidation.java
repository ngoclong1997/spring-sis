package vn.edu.hou.sis.validator;

import java.util.Date;
import java.util.List;
import java.util.regex.Matcher;


import java.util.regex.Pattern;

import org.apache.catalina.manager.host.HTMLHostManagerServlet;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;


import vn.edu.hou.sis.entities.HoSoSv;
import vn.edu.hou.sis.services.CanBoTuyenSinhService;

@Component
public class HoSoSvValidation implements Validator{

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
	
		
		System.out.println("creating " + creating.getNgaySinh());
		List<HoSoSv> hoSoSVByCMND = service.findByCmnd(creating.getCmnd());
		
		if (creating.getDiaChi().length() == 0 || creating.getDiaChi().trim() == "") {
			errors.rejectValue("diaChi", "error.hoSoSV.diaChi.required");
		}
		
		if (creating.getHoTen().length() == 0 || creating.getHoTen().trim() == "") {
			errors.rejectValue("hoTen", "error.hoSoSV.hoTen.required");
		}
		
		if (creating.getNgaySinh() == null) {
			errors.rejectValue("ngaySinh", "error.hoSoSV.ngaySinh.required");
		}
		
		if (creating.getNganhHocId() == -1) {
			errors.rejectValue("nganhHocId", "error.hoSoSV.nganhHoc.required");
		}
		
		if (creating.getGioiTinh() == -1) {
			errors.rejectValue("gioiTinh", "error.hoSoSV.gioiTinh.required");
		}
		
		if (creating.getTrinhDo() == -1) {
			errors.rejectValue("trinhDo", "error.hoSoSV.trinhDo.required");
		}
		
		if (creating.getNgoaiNgu().equals("NONE")) {
			errors.rejectValue("ngoaiNgu", "error.hoSoSV.ngoaiNgu.required");
		}
		
		List<HoSoSv> hoSoSVByEmail = service.findByEmail(creating.getEmail());
		if (hoSoSVByEmail != null) if (hoSoSVByEmail.size() > 0) if (hoSoSVByEmail.get(0).getEmail().equals(creating.getEmail())) {
			errors.rejectValue("email", "error.hoSoSV.email.conflict");
		}
		
		List<HoSoSv> hoSoSVBySDT = service.findBySDT(creating.getSdt());
		if (hoSoSVBySDT != null) if (hoSoSVBySDT.size() > 0) if (hoSoSVBySDT.get(0).getSdt().equals(creating.getSdt())) {
			errors.rejectValue("sdt", "error.hoSoSV.sdt.conflict");
		}
		
		if (hoSoSVByCMND != null) if (hoSoSVByCMND.size() > 0) if (hoSoSVByCMND.get(0).getCmnd().equals(creating.getCmnd())) {
			errors.rejectValue("cmnd", "error.hoSoSV.cmnd.conflict");
		}
		Pattern pattern = Pattern.compile(mobilePattern);
		Matcher matcher = pattern.matcher(creating.getSdt());
		if (!matcher.matches()) {
			errors.rejectValue("sdt", "error.hoSoSV.sdt.invalid");
		}
		pattern = Pattern.compile(cmndPattern);
		matcher = pattern.matcher(creating.getCmnd());
		if (!matcher.matches()) {
			errors.rejectValue("cmnd", "error.hoSoSV.cmnd.invalid");
		}
	}

}
