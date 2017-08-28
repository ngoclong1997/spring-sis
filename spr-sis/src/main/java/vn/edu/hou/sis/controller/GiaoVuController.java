package vn.edu.hou.sis.controller;

import java.security.Principal;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import vn.edu.hou.sis.entities.NganhHoc;
import vn.edu.hou.sis.exceptions.NganhHocNotFound;
import vn.edu.hou.sis.services.KhoaHocService;
import vn.edu.hou.sis.services.NganhHocService;

@Controller
public class GiaoVuController {

	@Autowired
	private NganhHocService nganhHocService;
	@Autowired
	private KhoaHocService khoaHocServices;
	
	@RequestMapping(value = "/giao-vu", method = RequestMethod.GET)
	public String giaoVuForm(Model model, Principal principal) {
		model.addAttribute("username", principal.getName());
		return "redirect:home";
	}

	@RequestMapping(value = "/nghiep-vu/quan-ly-nganh-hoc")
	public String nghiepVuQuanLyNganhHoc(Model model, Principal principal) {
		model.addAttribute("list", nganhHocService.findAll());
		return "QuanLyNganhHocPage";
	}

	@RequestMapping(value = "/nghiep-vu/quan-ly-lop-hoc")
	public String nghiepVuQuanLyLopHoc(Model model, Principal principal) {
		return "QuanLyLopHocPage";
	}

	@RequestMapping(value = "/nghiep-vu/quan-ly-khoa-hoc")
	public String nghiepVuQuanLyKhoaHoc(Model model, Principal principal) {
		model.addAttribute("listKhoaHoc", khoaHocServices.findAll());
		model.addAttribute("listNganhHoc", nganhHocService.findAll());
		return "QuanLyKhoaHocPage";
	}
	
	@RequestMapping("/nghiep-vu/quan-ly-nganh-hoc/delete")
	public String deleteNganhHoc(Model model, @RequestParam("id") String id) {
		if(id != null) {
			try {
				nganhHocService.delete(id);
			} catch (NganhHocNotFound e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return "redirect:/nghiep-vu/quan-ly-nganh-hoc";
	}
	@RequestMapping(value = "/nghiep-vu/quan-ly-nganh-hoc/edit", method = RequestMethod.GET)
	public String editNganhHoc(Model model, @RequestParam("id") String id) {
		if(nganhHocService.isDeleted(id)) return "404NotFoundPage";
		NganhHoc nganhHoc = nganhHocService.findById(id);
		model.addAttribute("nganhHoc", nganhHoc);
		return "addOrEditItem/AddOrEditNganhHoc";
	}
	
	@RequestMapping("/nghiep-vu/quan-ly-nganh-hoc/add")
	public String addNganhHoc(Model model) {
		NganhHoc nganhHoc = new NganhHoc();
		model.addAttribute("nganhHoc", nganhHoc);
		return "addOrEditItem/AddOrEditNganhHoc";
	}
	
	@RequestMapping(value = "/nghiep-vu/quan-ly-nganh-hoc/save", method = RequestMethod.POST)
	public String saveNganhHoc(Model model, @ModelAttribute("nganhHoc") NganhHoc nganhHoc, BindingResult result) {
		nganhHocService.save(nganhHoc);
		return "redirect:/nghiep-vu/quan-ly-nganh-hoc"; 
	}
	
	
	
	
}
