package vn.edu.hou.sis.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;
import vn.edu.hou.sis.entities.HoSoSv;
import vn.edu.hou.sis.services.CanBoTuyenSinhService;

@Controller
public class CanBoTuyenSinhController {

	@Autowired
	private CanBoTuyenSinhService service;

	@RequestMapping(value = "/can-bo-tuyen-sinh", method = RequestMethod.GET)
	public String canBoTuyenSinhForm(Model model, Principal principal) {
		model.addAttribute("username", principal.getName());
		return "redirect:home";
	}

	@RequestMapping(value = "/nghiep-vu/quan-ly-ho-so-du-tuyen")
	public String nghiepVuQuanLyHoSoDuTuyen(Model model, Principal principal) {
		List<HoSoSv> dsHoSoSV = service.findByCbTuyenSinhUsername(principal.getName());
		model.addAttribute("hoSoSV", new HoSoSv());
		model.addAttribute("dsHoSoSV", dsHoSoSV);
		model.addAttribute("dsNganhHoc", service.findAllNganhHoc());
		return "QuanLyHoSoDuTuyenPage";
	}

	@RequestMapping(value = "/nghiep-vu/quan-ly-ho-so-du-tuyen/them-ho-so", method=RequestMethod.POST)
	public String themHoSo(@ModelAttribute("hoSoSV") HoSoSv hoSoSV, BindingResult result,
			Principal principal) {
		if (result.hasErrors()) {
			return "UnknownError";
		}
		System.out.println(hoSoSV);
		return "QuanLyHoSoDuTuyenPage";
	}
}
