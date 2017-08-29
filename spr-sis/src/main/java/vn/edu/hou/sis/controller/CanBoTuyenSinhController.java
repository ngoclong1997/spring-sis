package vn.edu.hou.sis.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Date;
import java.util.List;
import vn.edu.hou.sis.entities.HoSoSv;
import vn.edu.hou.sis.exceptions.HoSoSVNotFound;
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
		hoSoSV.setNgayLap(new Date());
		hoSoSV.setHoKhauThuongTru(hoSoSV.getDiaChi());
		hoSoSV.setIsDeleted(0);
		hoSoSV.setCbTuyenSinhUsername(principal.getName());
		service.create(hoSoSV);
		System.out.println(hoSoSV);
		return "redirect:/nghiep-vu/quan-ly-ho-so-du-tuyen";
	}
	
	@RequestMapping(value = "/nghiep-vu/quan-ly-ho-so-du-tuyen/update", method=RequestMethod.GET)
	public String suaHoSo(@RequestParam("id") Integer id, Model model,
			Principal principal) {
		HoSoSv hoSoSV = null;
		hoSoSV = service.findById(id);
		model.addAttribute("hoSoSV", hoSoSV);
		model.addAttribute("dsNganhHoc", service.findAllNganhHoc());
		return "SuaHoSoPage";
	}
	@RequestMapping(value = "/nghiep-vu/quan-ly-ho-so-du-tuyen/update", method=RequestMethod.POST)
	public String luuHoSoDaSua(@ModelAttribute("hoSoSV") HoSoSv hoSoSV, BindingResult result,
			Principal principal) {
		if (result.hasErrors()) {
			return "UnknownError";
		}
		int id = hoSoSV.getId();
		try {
			service.update(hoSoSV);
		} catch (HoSoSVNotFound e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/nghiep-vu/quan-ly-ho-so-du-tuyen";
	}
	@RequestMapping(value = "/nghiep-vu/quan-ly-ho-so-du-tuyen/delete", method=RequestMethod.GET)
	public String xoaHoSo(@PathVariable("id") int id, 
			Principal principal) {
		System.out.println("Xoa ho so " + id);
		return "redirect:/nghiep-vu/quan-ly-ho-so-du-tuyen";
	}
	@RequestMapping(value = "/nghiep-vu/quan-ly-ho-so-du-tuyen/detail/{id}", method=RequestMethod.GET)
	public String chiTietHoSo(@PathVariable("id") int id,
			Principal principal) {
		System.out.println("chitiet ho so " + id);
		return "redirect:/nghiep-vu/quan-ly-ho-so-du-tuyen";
	}
	@RequestMapping(value = "/nghiep-vu/quan-ly-ho-so-du-tuyen/createStudent/{id}", method=RequestMethod.GET)
	public String taoSinhVien(@PathVariable("id") int id, BindingResult result,
			Principal principal) {
		System.out.println("student ho so " + id);
		return "redirect:/nghiep-vu/quan-ly-ho-so-du-tuyen";
	}
}
