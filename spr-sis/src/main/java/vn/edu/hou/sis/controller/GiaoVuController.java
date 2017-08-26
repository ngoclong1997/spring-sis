package vn.edu.hou.sis.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import vn.edu.hou.sis.services.UserService;

@Controller
public class GiaoVuController {

	@Autowired
	private UserService userService;

	@RequestMapping(value = "/giao-vu", method = RequestMethod.GET)
	public String giaoVuForm(Model model, Principal principal) {
		model.addAttribute("username", principal.getName());
		return "redirect:home";
	}

	@RequestMapping(value = "/nghiep-vu/quan-ly-nganh-hoc")
	public String nghiepVuQuanLyNganhHoc(Model model, Principal principal) {
		return "QuanLyNganhHocPage";
	}

	@RequestMapping(value = "/nghiep-vu/quan-ly-lop-hoc")
	public String nghiepVuQuanLyLopHoc(Model model, Principal principal) {
		return "QuanLyLopHocPage";
	}

	@RequestMapping(value = "/nghiep-vu/quan-ly-khoa-hoc")
	public String nghiepVuQuanLyKhoaHoc(Model model, Principal principal) {
		return "QuanLyKhoaHocPage";
	}
}
