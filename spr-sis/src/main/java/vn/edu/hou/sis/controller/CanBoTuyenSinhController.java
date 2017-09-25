package vn.edu.hou.sis.controller;

import java.security.Principal;
import java.util.Calendar;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder; 
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ch.qos.logback.classic.Logger;
import vn.edu.hou.sis.entities.HoSoSv;
import vn.edu.hou.sis.entities.NganhHoc;
import vn.edu.hou.sis.entities.SinhVien;
import vn.edu.hou.sis.entities.User;
import vn.edu.hou.sis.entities.UserRole;
import vn.edu.hou.sis.exceptions.HoSoSVNotFound;
import vn.edu.hou.sis.exceptions.NganhHocNotFound;
import vn.edu.hou.sis.services.CanBoTuyenSinhService;
import vn.edu.hou.sis.services.SinhVienService;
import vn.edu.hou.sis.services.UserRoleService;
import vn.edu.hou.sis.services.UserService;
import vn.edu.hou.sis.validator.HoSoSvValidation;

@Controller
public class CanBoTuyenSinhController {

	Logger logger = (Logger) LoggerFactory.getLogger(CanBoTuyenSinhController.class);

	@Autowired
	private CanBoTuyenSinhService service;
	@Autowired
	private UserRoleService userRoleService;
	@Autowired
	private SinhVienService sinhVienService;
	@Autowired
	private UserService userService;
	
	@Autowired
	HoSoSvValidation hoSoSVFormValidator;
	
	@RequestMapping(value = "/can-bo-tuyen-sinh", method = RequestMethod.GET)
	public String canBoTuyenSinhForm(Model model, Principal principal) {
		model.addAttribute("username", principal.getName());
		return "redirect:home";
	}

	@RequestMapping(value = "/nghiep-vu/quan-ly-ho-so-du-tuyen", method = RequestMethod.GET)
	public String nghiepVuQuanLyHoSoDuTuyen(Model model, Principal principal) {
		List<HoSoSv> dsHoSoSV = service.findByCbTuyenSinhUsername(principal.getName());
		model.addAttribute("hoSoSV", new HoSoSv());
		model.addAttribute("dsHoSoSV", dsHoSoSV);
		model.addAttribute("dsNganhHoc", service.findAllNganhHoc());
		return "QuanLyHoSoDuTuyenPage";
	}
	
	@RequestMapping(value = "/nghiep-vu/quan-ly-ho-so-du-tuyen/them-ho-so", method = RequestMethod.GET)
	public String themHoSo(Model model, Principal principal) {
		List<NganhHoc> dsNganhHoc = service.findAllNganhHoc();
//		for (NganhHoc nh : lstNganhHoc) {
//			dsNganhHoc.put(nh.getId(), nh.getTenNganh());
//		}
		
		model.addAttribute("dsNganhHoc", dsNganhHoc);
		model.addAttribute("hoSoSV", new HoSoSv());
		return "ThemHoSoDuTuyenPage";
	}

	@RequestMapping(value = "/nghiep-vu/quan-ly-ho-so-du-tuyen/xu-ly-them-ho-so", method = RequestMethod.POST)
	public String xuLyThemHoSo(Model model, @Valid @ModelAttribute("hoSoSV") HoSoSv hoSoSV, BindingResult result, Principal principal) {
		hoSoSVFormValidator.validate(hoSoSV, result);
		if (result.hasErrors()) {
			logger.debug(result.getAllErrors().toString());
			List<NganhHoc> dsNganhHoc = service.findAllNganhHoc();
			model.addAttribute("dsNganhHoc", dsNganhHoc);
			model.addAttribute("hoSoSV", hoSoSV);
			return "ThemHoSoDuTuyenPage";
		}
		hoSoSV.setNgayLap(new Date());
		hoSoSV.setHoKhauThuongTru(hoSoSV.getDiaChi());
		hoSoSV.setIsDeleted(0);
		hoSoSV.setCbTuyenSinhUsername(principal.getName());
		hoSoSV.setTrangThaiHoSo(0);
		service.create(hoSoSV);
		return "redirect:/nghiep-vu/quan-ly-ho-so-du-tuyen";
	}

	@RequestMapping(value = "/nghiep-vu/quan-ly-ho-so-du-tuyen/update/{id}", method = RequestMethod.POST)
	public String xuLyCapNhatHoSo(@ModelAttribute("hoSoSVUpdated") HoSoSv hoSoSV, @PathVariable("id") Integer id,
			BindingResult result, Principal principal) {
		if (result.hasErrors()) {
			return "UnknownError";
		}
		hoSoSV.setId(id);
		hoSoSV.setNgayLap(new Date());
		hoSoSV.setHoKhauThuongTru(hoSoSV.getDiaChi());
		hoSoSV.setIsDeleted(0);
		hoSoSV.setCbTuyenSinhUsername(principal.getName());
		hoSoSV.setTrangThaiHoSo(0);
		System.out.println(hoSoSV);
		try {
			service.updateHoSoSV(hoSoSV);
		} catch (HoSoSVNotFound e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/nghiep-vu/quan-ly-ho-so-du-tuyen";
	}

	@RequestMapping(value = "/nghiep-vu/quan-ly-ho-so-du-tuyen/delete/{id}", method = RequestMethod.GET)
	public String xuLyXoaHoSo(@PathVariable("id") Integer id, Principal principal) {
		try {
			service.deleteHoSoById(id);
		} catch (HoSoSVNotFound e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/nghiep-vu/quan-ly-ho-so-du-tuyen";
	}

	@RequestMapping(value = "/nghiep-vu/quan-ly-ho-so-du-tuyen/detail/{id}", method = RequestMethod.GET)
	public String chiTietHoSo(@PathVariable("id") int id, Model model, Principal principal) {
		NganhHoc nganhHoc = null;
		HoSoSv hoSoSV = service.findById(id);
		logger.debug(hoSoSV.toString());
		try {
			nganhHoc = service.findNganhHocById(hoSoSV.getNganhHocId());
		} catch (NganhHocNotFound e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("hoSoSV", hoSoSV);
		model.addAttribute("nganhHoc", nganhHoc.getTenNganh());
		return "ThongTinHoSoChiTietPage";
	}

	@RequestMapping(value = "/nghiep-vu/quan-ly-ho-so-du-tuyen/create-student/{id}", method = RequestMethod.GET)
	public String taoSinhVien(@PathVariable("id") Integer id, Principal principal, Model model) {
		HoSoSv hoSoSV = service.findById(id);
		hoSoSV.setId(id);
		hoSoSV.setNgayLap(new Date());
		hoSoSV.setHoKhauThuongTru(hoSoSV.getDiaChi());
		hoSoSV.setIsDeleted(0);
		hoSoSV.setCbTuyenSinhUsername(principal.getName());
		if (hoSoSV.getTrangThaiHoSo() == 1) {
			model.addAttribute("info", "Sinh viÃªn Ä‘Ã£ Ä‘Æ°á»£c táº¡o!!");
			return "LoiTaoSinhVienPage";
		}
		if (hoSoSV.nullProperties() != "") {
			model.addAttribute("info", "CÃ¡c trÆ°á»�ng bá»‹ thiáº¿u");
			String nullProperties[] = hoSoSV.nullProperties().split("_");
			model.addAttribute("nullProperties", nullProperties);
			return "LoiTaoSinhVienPage";
		}

		User user = new User(hoSoSV.getCmnd(), hoSoSV.getDiaChi(), hoSoSV.getEmail(), hoSoSV.getGioiTinh(),
				hoSoSV.getHoTen(), 0, hoSoSV.getNgaySinh(), "", hoSoSV.getCmnd(), hoSoSV.getSdt(), "",
				hoSoSV.getEmail());
		user.setIsDeleted(0);
		userService.create(user);

		SinhVien sinhVien = new SinhVien();
		sinhVien.setCbtsUsername(principal.getName());
		sinhVien.setUsername(user.getEmail());
		sinhVien.setTrangThaiId(1);
		sinhVien.setNganhHocId(hoSoSV.getNganhHocId());
		sinhVien.setIsDeleted(0);

		// Táº¡o mÃ£ phÃ¢n Ä‘oáº¡n
		String maNganh = service.findKyHieuByNganhHocId(hoSoSV.getNganhHocId());
		Calendar cal = Calendar.getInstance();
		cal.setTime(hoSoSV.getNgayLap());
		String year = String.valueOf(cal.get(Calendar.YEAR)).substring(2, 4);
		Integer trinhDo = hoSoSV.getTrinhDo();
		String code = maNganh + year + trinhDo;
		logger.debug(code);
		sinhVien.setLopId(service.findLopIdByCode(code));
		sinhVienService.create(sinhVien);

		Integer roleSVId = userRoleService.findRoleIdByRole("SINH_VIEN");
		UserRole userRole = new UserRole();
		userRole.setUsername(hoSoSV.getEmail());
		userRole.setUserRoleId(roleSVId);
		userRole.setIsDeleted(0);
		userRoleService.create(userRole);

		service.updateTrangThaiHoSo(id);
		logger.debug(principal.getName() + " Ä‘Ã£ táº¡o sinh viÃªn " + hoSoSV.getHoTen());
		return "redirect:/nghiep-vu/quan-ly-ho-so-du-tuyen";
	}

}
