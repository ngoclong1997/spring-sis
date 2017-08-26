package vn.edu.hou.sis.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import vn.edu.hou.sis.services.UserService;

@Controller
public class CanBoTuyenSinhController {

	@Autowired
	private UserService userService;

	@RequestMapping(value = "/can-bo-tuyen-sinh", method = RequestMethod.GET)
	public String canBoTuyenSinhForm(Model model, Principal principal) {
		model.addAttribute("username", principal.getName());
		return "redirect:home";
	}
	
	@RequestMapping(value = "/nghiep-vu/quan-ly-ho-so-du-tuyen")
	public String nghiepVuQuanLyHoSoDuTuyen(Model model, Principal principal) {
		return "QuanLyHoSoDuTuyenPage";
	}
}
