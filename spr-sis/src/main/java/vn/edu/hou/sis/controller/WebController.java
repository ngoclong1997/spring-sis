package vn.edu.hou.sis.controller;

import java.security.Principal;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import vn.edu.hou.sis.entities.User;
import vn.edu.hou.sis.services.UserService;

@Controller
public class WebController {

	@Autowired
	private UserService userService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String redirectLogin() {
		return "redirect:login";
	}

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String homePage(Model model, Principal principal) {
		if (principal != null)
			model.addAttribute("username", principal.getName());
		else model.addAttribute("username", "Annonymous");
		return "HomePage";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginForm(Model model, Principal principal) {
		if (principal != null)
			return "redirect:home";
		return "LoginPage";
	}

	@RequestMapping(value = "/403Page", method = RequestMethod.GET)
	public String accessDenied(Model model, Principal principal) {
		if (principal != null) {
			model.addAttribute("message",
					"Hi " + principal.getName() + "<br> You do not have permission to access this page!");
		} else {
			model.addAttribute("message", "You do not have permission to access this page!");
		}
		return "403Page";
	}

	@RequestMapping(value = "/user-info", method = RequestMethod.GET)
	public String userInfo(Model model, Principal principal) {
		if (principal == null) return "redirect:login";
		String userName = principal.getName();
		User user = userService.findByUsername(principal.getName());
		model.addAttribute("user", user);
		return "UserInfoPage";
	}

	@RequestMapping(value = "/about-us", method = RequestMethod.GET)
	public String userInfo() {
		return "AboutUsPage";
	}

}
