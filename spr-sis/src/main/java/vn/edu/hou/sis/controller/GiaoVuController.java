package vn.edu.hou.sis.controller;

import java.security.Principal;
import java.util.List;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import vn.edu.hou.sis.entities.KhoaHoc;
import vn.edu.hou.sis.entities.LopHoc;
import vn.edu.hou.sis.entities.NganhHoc;
import vn.edu.hou.sis.entities.SinhVien;
import vn.edu.hou.sis.exceptions.KhoaHocNotFound;
import vn.edu.hou.sis.exceptions.LopHocNotFound;
import vn.edu.hou.sis.exceptions.NganhHocNotFound;
import vn.edu.hou.sis.services.KhoaHocService;
import vn.edu.hou.sis.services.LopHocService;
import vn.edu.hou.sis.services.NganhHocService;
import vn.edu.hou.sis.services.SinhVienService;
import vn.edu.hou.sis.validator.KhoaHocValidation;
import vn.edu.hou.sis.validator.LopHocValidation;
import vn.edu.hou.sis.validator.NganhHocValidation;

@Controller
public class GiaoVuController {

	@Autowired
	private NganhHocService nganhHocService;
	@Autowired
	private KhoaHocService khoaHocServices;
	@Autowired
	private LopHocService lopHocService;
	@Autowired
	private SinhVienService sinhVienService;

	@Autowired
	NganhHocValidation nganhHocValidatior;

	@Autowired
	KhoaHocValidation khoaHocValidation;

	@Autowired
	LopHocValidation lopHocValidation;

	private int status = 0;

	@SuppressWarnings("unused")
	private Logger logger = LoggerFactory.getLogger(GiaoVuController.class);

	@RequestMapping(value = "/giao-vu", method = RequestMethod.GET)
	public String giaoVuForm(Model model, Principal principal) {
		model.addAttribute("username", principal.getName());
		return "redirect:home";
	}

	@RequestMapping(value = "/nghiep-vu/quan-ly-nganh-hoc")
	public String nghiepVuQuanLyNganhHoc(Model model, Principal principal) {
		model.addAttribute("list", nganhHocService.findAll());
		if (this.status == 1) {
			model.addAttribute("success", true);
		} else if (this.status == 2) {
			model.addAttribute("success", false);
		}
		this.status = 0;
		return "QuanLyNganhHocPage";
	}

	@RequestMapping(value = "/nghiep-vu/quan-ly-lop-hoc")
	public String nghiepVuQuanLyLopHoc(Model model, Principal principal) {
		model.addAttribute("listNganh", nganhHocService.findAll());
		model.addAttribute("listKhoaHoc", khoaHocServices.findAll());
		model.addAttribute("listLop", lopHocService.findAll());
		if (this.status == 1) {
			model.addAttribute("success", true);
		} else if (this.status == 2) {
			model.addAttribute("success", false);
		}
		this.status = 0;
		return "QuanLyLopHocPage";
	}

	@RequestMapping(value = "/nghiep-vu/quan-ly-khoa-hoc")
	public String nghiepVuQuanLyKhoaHoc(Model model, Principal principal) {
		model.addAttribute("listKhoaHoc", khoaHocServices.findAll());
		model.addAttribute("listNganhHoc", nganhHocService.findAll());
		if (this.status == 1) {
			model.addAttribute("success", true);
		} else if (this.status == 2) {
			model.addAttribute("success", false);
		}
		this.status = 0;
		return "QuanLyKhoaHocPage";
	}

	@RequestMapping(value = "/nghiep-vu/quan-ly-sinh-vien")
	public String nghiepVuQuanLySinhVien(Model model, Principal principal) {
		model.addAttribute("listSinhVien", sinhVienService.findAll());
		return "QuanLySinhVienPage";
	}

	// Ngành Học

	@RequestMapping("/nghiep-vu/quan-ly-nganh-hoc/delete")
	public String deleteNganhHoc(Model model, @RequestParam("id") String id) {
		if (id.trim().length() > 0) {
			try {
				if (khoaHocServices.isDeleteNganhHoc(id)) {
					nganhHocService.delete(id);
					this.status = 1;
					return "redirect:/nghiep-vu/quan-ly-nganh- hoc";
				} else {
					this.status = 2;
					return "redirect:/nghiep-vu/quan-ly-nganh-hoc";
				}
			} catch (NganhHocNotFound e) {
				this.status = 2;
				return "redirect:/nghiep-vu/quan-ly-nganh-hoc";
			}
		}
		return "redirect:/nghiep-vu/quan-ly-nganh-hoc";
	}

	@RequestMapping(value = "/nghiep-vu/quan-ly-nganh-hoc/edit", method = RequestMethod.GET)
	public String editNganhHoc(Model model, @RequestParam("id") String id) {
		if (nganhHocService.isDeleted(id))
			return "404NotFoundPage";
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
	public String saveNganhHoc(Model model, @Valid @ModelAttribute("nganhHoc") NganhHoc nganhHoc,
			BindingResult result) {
		nganhHocValidatior.validate(nganhHoc, result);
		if (result.hasErrors()) {
			model.addAttribute("nganhHoc", nganhHoc);
			return "addOrEditItem/AddOrEditNganhHoc";
		} else {
			nganhHoc.setIsDeleted(0);
			nganhHocService.save(nganhHoc);
		}
		return "redirect:/nghiep-vu/quan-ly-nganh-hoc";
	}

	// Khóa Học
	@RequestMapping(value = "/nghiep-vu/quan-ly-khoa-hoc/add")
	public String addKhoaHoc(Model model) {
		KhoaHoc khoaHoc = new KhoaHoc();
		model.addAttribute("khoaHoc", khoaHoc);
		model.addAttribute("listNganh", nganhHocService.findAll());
		return "addOrEditItem/AddOrEditKhoaHoc";
	}

	@RequestMapping(value = "/nghiep-vu/quan-ly-khoa-hoc/save", method = RequestMethod.POST)
	public String saveKhoaHoc(Model model, @Valid @ModelAttribute("khoaHoc") KhoaHoc khoaHoc, BindingResult result) {
		khoaHocValidation.validate(khoaHoc, result);
		if (result.hasErrors()) {
			model.addAttribute("khoaHoc", khoaHoc);
			model.addAttribute("listNganh", nganhHocService.findAll());
			return "addOrEditItem/AddOrEditKhoaHoc";
		}
		khoaHocServices.save(khoaHoc);
		return "redirect:/nghiep-vu/quan-ly-khoa-hoc";
	}

	@RequestMapping(value = "/nghiep-vu/quan-ly-khoa-hoc/edit", method = RequestMethod.GET)
	public String editKhoaHoc(Model model, @RequestParam("id") String id) {
		if (khoaHocServices.isDeleted(id))
			return "404NotFoundPage";
		KhoaHoc khoaHoc = khoaHocServices.findById(id);
		model.addAttribute("khoaHoc", khoaHoc);
		model.addAttribute("listNganh", nganhHocService.findAll());
		return "addOrEditItem/AddOrEditKhoaHoc";
	}

	@RequestMapping("/nghiep-vu/quan-ly-khoa-hoc/delete")
	public String deleteKhoaHoc(Model model, @RequestParam("id") String id) {
		if (id.trim().length() > 0) {
			try {
				if (lopHocService.isDeleteKhoaHoc(id)) {
					khoaHocServices.delete(id);
					this.status = 1;
					return "redirect:/nghiep-vu/quan-ly-khoa- hoc";
				} else {
					this.status = 2;
					return "redirect:/nghiep-vu/quan-ly-khoa-hoc";
				}
			} catch (KhoaHocNotFound e) {
				this.status = 2;
				return "redirect:/nghiep-vu/quan-ly-khoa-hoc";
			}
		}
		return "redirect:/nghiep-vu/quan-ly-khoa-hoc";
	}

	// Lớp Học
	@RequestMapping(value = "/nghiep-vu/quan-ly-lop-hoc/edit", method = RequestMethod.GET)
	public String editLopHoc(Model model, @RequestParam("id") String id) {
		if (lopHocService.isDeleted(id))
			return "404NotFoundPage";
		LopHoc lopHoc = lopHocService.findById(id);
		model.addAttribute("lopHoc", lopHoc);
		model.addAttribute("listNganh", nganhHocService.findAll());
		model.addAttribute("listKhoaHoc", khoaHocServices.findKhoaHocByNganhHocId(lopHoc.getNganhHocId().toString()));
		return "addOrEditItem/AddOrEditLopHoc";
	}

	@RequestMapping(value = "/nghiep-vu/quan-ly-lop-hoc/khoa-hoc", method = RequestMethod.GET)
	@ResponseBody
	public List<KhoaHoc> ajaxAddLopHoc(@RequestParam("nganhHocId") String nganhHocId) {
		List<KhoaHoc> list = null;
		list = khoaHocServices.findKhoaHocByNganhHocId(nganhHocId);
		return list;
	}

	@RequestMapping(value = "/nghiep-vu/quan-ly-lop-hoc/add")
	public String addLopHoc(Model model) {
		LopHoc lopHoc = new LopHoc();
		model.addAttribute("lopHoc", lopHoc);
		model.addAttribute("listNganh", nganhHocService.findAll());
		return "addOrEditItem/AddOrEditLopHoc";
	}

	@RequestMapping(value = "/nghiep-vu/quan-ly-lop-hoc/save", method = RequestMethod.POST)
	public String saveLopHoc(Model model, @Valid @ModelAttribute("lopHoc") LopHoc lopHoc, BindingResult result) {
		KhoaHoc k = khoaHocServices.findById(lopHoc.getKhoaHocId().toString());
		NganhHoc nganh = nganhHocService.findById(Integer.toString(lopHoc.getNganhHocId()));
		lopHoc.setCode(lopHocService.genCode(lopHoc, k, nganh));
		lopHocValidation.validate(lopHoc, result);
		if (result.hasErrors()) {
			model.addAttribute("lopHoc", lopHoc);
			model.addAttribute("listNganh", nganhHocService.findAll());
			model.addAttribute("listKhoaHoc",
					khoaHocServices.findKhoaHocByNganhHocId(lopHoc.getNganhHocId().toString()));
			return "addOrEditItem/AddOrEditLopHoc";
		}
		lopHocService.save(lopHoc);
		return "redirect:/nghiep-vu/quan-ly-lop-hoc";
	}

	@RequestMapping("/nghiep-vu/quan-ly-lop-hoc/delete")
	public String deleteLopHoc(Model model, @RequestParam("id") String id) {
		if (id != null) {
			try {
				lopHocService.delete(id);
			} catch (LopHocNotFound e) {
				e.printStackTrace();
			}
		}
		return "redirect:/nghiep-vu/quan-ly-lop-hoc";
	}

	// Sinh Vien
	@RequestMapping(value = "/nghiep-vu/quan-ly-sinh-vien/save", method = RequestMethod.POST)
	public String saveSinhVien(Model model, @ModelAttribute("sinhVien") SinhVien sinhVien) {
		sinhVienService.save(sinhVien);
		return "redirect:/nghiep-vu/quan-ly-sinh-vien";
	}

	@RequestMapping(value = "/nghiep-vu/quan-ly-sinh-vien/edit", method = RequestMethod.GET)
	public String editSinhVien(Model model, @RequestParam("id") String id) {
		if (sinhVienService.isDeleted(id))
			return "404NotFoundPage";
		SinhVien sinhVien = sinhVienService.findSinhVienById(id);
		model.addAttribute("sinhVien", sinhVien);
		model.addAttribute("listTrangThai", sinhVienService.findAllTrangThaiSv());
		return "addOrEditItem/EditSinhVien";
	}

}