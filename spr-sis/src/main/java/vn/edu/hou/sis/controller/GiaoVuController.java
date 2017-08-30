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

import vn.edu.hou.sis.entities.KhoaHoc;
import vn.edu.hou.sis.entities.LopHoc;
import vn.edu.hou.sis.entities.NganhHoc;
import vn.edu.hou.sis.exceptions.NganhHocNotFound;
import vn.edu.hou.sis.services.KhoaHocService;
import vn.edu.hou.sis.services.LopHocService;
import vn.edu.hou.sis.services.NganhHocService;

@Controller
public class GiaoVuController {

	@Autowired
	private NganhHocService nganhHocService;
	@Autowired
	private KhoaHocService khoaHocServices;
	@Autowired
	private LopHocService lopHocService;
	
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
		model.addAttribute("listNganh", nganhHocService.findAll());
		model.addAttribute("listKhoaHoc", khoaHocServices.findAll());
		model.addAttribute("listLop", lopHocService.findAll());
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
	
	@RequestMapping(value = "/nghiep-vu/quan-ly-khoa-hoc/add")
	public String addKhoaHoc(Model model) {
		KhoaHoc khoaHoc = new KhoaHoc();
		model.addAttribute("khoaHoc", khoaHoc);
		model.addAttribute("listNganh", nganhHocService.findAll());
		return "addOrEditItem/AddOrEditKhoaHoc";
	}
	
	@RequestMapping(value = "/nghiep-vu/quan-ly-khoa-hoc/save", method = RequestMethod.POST)
	public String saveNganhHoc(Model model, @ModelAttribute("khoaHoc") KhoaHoc khoaHoc) {
		if(khoaHoc.getId() == null && khoaHocServices.isExist(khoaHoc)){
			model.addAttribute("msg", "Khóa Học Đã Tồn Tại!");
			return "ErrorDatabase";
		}
		khoaHocServices.save(khoaHoc);
		return "redirect:/nghiep-vu/quan-ly-khoa-hoc"; 
	}
	
	@RequestMapping(value = "/nghiep-vu/quan-ly-khoa-hoc/edit", method = RequestMethod.GET)
	public String editKhoaHoc(Model model, @RequestParam("id") String id) {
		if(khoaHocServices.isDeleted(id)) return "404NotFoundPage";
		KhoaHoc khoaHoc = khoaHocServices.findById(id);
		model.addAttribute("khoaHoc", khoaHoc);
		model.addAttribute("listNganh", nganhHocService.findAll());
		return "addOrEditItem/AddOrEditKhoaHoc";
	}
	
	@RequestMapping(value = "/nghiep-vu/quan-ly-lop-hoc/add")
	public String addLopHoc(Model model) {
		LopHoc lopHoc = new LopHoc();
		model.addAttribute("lopHoc", lopHoc);
		model.addAttribute("listNganh", nganhHocService.findAll());
		return "addOrEditItem/AddOrEditLopHoc";
	}
	
	@RequestMapping(value = "/nghiep-vu/quan-ly-lop-hoc/edit", method = RequestMethod.GET)
	public String editLopHoc(Model model, @RequestParam("id") String id) {
		if(lopHocService.isDeleted(id)) return "404NotFoundPage";
		LopHoc lopHoc = lopHocService.findById(id);
		model.addAttribute("lopHoc", lopHoc);
		model.addAttribute("listNganh", nganhHocService.findAll());
		return "addOrEditItem/AddOrEditLopHoc";
	}
	
	@RequestMapping(value = "/nghiep-vu/quan-ly-lop-hoc/save", method = RequestMethod.POST)
	public String saveLopHoc(Model model, @ModelAttribute("lopHoc") LopHoc lopHoc) {
		if(lopHoc.getId() == null && lopHocService.isExist(lopHoc)) {
			model.addAttribute("msg", "Lớp Học Đã Tồn Tại!");
			return "ErrorDatabase";
		}
		lopHocService.save(lopHoc);
		return "redirect:/nghiep-vu/quan-ly-lop-hoc"; 
	}
	
	private String genCode(LopHoc lopHoc) {
		String code = "";
		return code;
	}
	
}
