package quang.ph.ifootball.controller;

import java.security.Principal;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import quang.ph.ifootball.entity.AppUser;
import quang.ph.ifootball.entity.Pitch;
import quang.ph.ifootball.service.AppUserService;
import quang.ph.ifootball.service.PitchService;
import quang.ph.ifootball.service.StoreFileService;

@Controller
public class PitchController {
	
	@Autowired
	private StoreFileService storeFileService;
	
	@Autowired
	private PitchService pitchService;
	
	@Autowired
	private AppUserService appUserService;

	@RequestMapping(value = "/pitch", method = RequestMethod.GET)
	public String pitchPage(Model model, Principal principal) {

		List<Pitch> listPitch = pitchService.findAll();
		model.addAttribute("listPitch", listPitch);
		
		AppUser appUser = new AppUser();
		if (principal != null) {
			User loginedUser = (User) ((Authentication) principal).getPrincipal();
			appUser = appUserService.findUserAccount(loginedUser.getUsername());
		}
		model.addAttribute("appUserId", appUser.getUserId());
		
		return "/pitch//pitch";
	}

	/*
	@RequestMapping(value = "/bookpitch", method = RequestMethod.GET)
	public String bookPitch(Model model, Principal principal, @RequestParam("id") Long pitchId,
			@RequestParam("userId") Long userId) {
		Pitch pitch = pitchService.findById(pitchId);
		AppUser userBookPitch = appUserService.findById(userId);
		pitch.setAppUser(userBookPitch);
		pitchService.save(pitch);

		// TODO
		// Create a Simple MailMessage.
		SimpleMailMessage message = new SimpleMailMessage();

		message.setTo(userBookPitch.getEmail());
		message.setSubject("ĐẶT SÂN THÀNH CÔNG");
		message.setText("Bạn đã đặt sân bóng thành công!!!");

		// Send Message!
		javaMailSender.send(message);

		return "redirect:/pitch";
	}
	*/

	@RequestMapping(value = "/detailpitch{id}", method = RequestMethod.GET)
	public String pitchDetail(Model model, Principal principal, @RequestParam("id") Long pitchId) {
		Pitch pitch = pitchService.findById(pitchId);
		model.addAttribute("pitch", pitch);
		return "/pitch/detailpitch";
	}

	@RequestMapping(value = "/createpitch{id}", method = RequestMethod.GET)
	public String createPitch(Model model, Principal principal, @RequestParam("id") Long pitchId) {
		if (pitchId == -1) {
			model.addAttribute("pitch", new Pitch());
		}
		else {
			Pitch pitch = pitchService.findById(pitchId);
			model.addAttribute("pitch", pitch);
		}
		
		return "/pitch/createPitch";
	}

	@RequestMapping(value = "/deletepitch{id}", method = RequestMethod.GET)
	public String deletePitch(Model model, Principal principal, @RequestParam("id") Long pitchId) {

		// TODO
		Pitch pitch = pitchService.findById(pitchId);
		pitchService.delete(pitch);
		return "redirect:/pitch";
	}
	
	
	
	@RequestMapping(value = "save", method = RequestMethod.POST)
	public String savePitch(@Validated @RequestBody Pitch pitch) {
		Date date = Calendar.getInstance().getTime();
		pitch.setUpdated_at(date);
		
		pitchService.save(pitch);
		return "redirect:/pitch";
	}
	
	
	/*
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String savePitch(Model model, Principal principal, @Validated @ModelAttribute("pitch") Pitch pitch) {
		Date date = Calendar.getInstance().getTime();
		pitch.setUpdated_at(date);
		
		pitchService.save(pitch);
		return "redirect:/pitch";
	}
	*/
	
	@PostMapping("/upload")
	@ResponseBody
	public String singleFileUpload(@RequestParam("file") MultipartFile file) {
		String fileName = "";
		String linkFile = "http://localhost:8080/link/";
		try {
			if (file.isEmpty()) {
				throw new Exception();
			}
			fileName = storeFileService.store(file);
			linkFile += fileName;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return linkFile;
	}
}
