package quang.ph.ifootball.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import quang.ph.ifootball.entity.AppUser;
import quang.ph.ifootball.service.AppUserService;

@Controller
public class AppUserController {
	
	@Autowired
	private AppUserService appUserService;

	@Autowired
	JavaMailSender javaMailSender;

	@RequestMapping(value = "/addAppUser")
	public String addAppUser(Model model, Principal principal) {
		model.addAttribute("appUser", new AppUser());
		return "/appUser//addAppUser";
	}

	// truyen kieur json
	@RequestMapping(value = "saveAppUser", method = RequestMethod.POST)
	public String saveAppUser(@Validated @RequestBody AppUser appUser) {
		appUserService.save(appUser);
		return "redirect:/addAppUser";
	}
	
}
