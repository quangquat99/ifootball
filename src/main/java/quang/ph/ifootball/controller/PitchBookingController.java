package quang.ph.ifootball.controller;

import java.security.Principal;
import java.util.Calendar;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import quang.ph.ifootball.constant.PitchConstant;
import quang.ph.ifootball.dto.PitchBookingDTO;
import quang.ph.ifootball.entity.AppUser;
import quang.ph.ifootball.entity.PitchBooking;
import quang.ph.ifootball.service.AppUserService;
import quang.ph.ifootball.service.PitchBookingService;

@Controller
@RequestMapping("/pitchbooking")
public class PitchBookingController {
	
	@Autowired
	private PitchBookingService pitchBookingService;
	
	@Autowired
	private AppUserService appUserService;
	
	@RequestMapping(value = "/pitchSchedule", method = RequestMethod.GET)
	public String deletePitch(Model model, Principal principal, @RequestParam("id") Long pitchId) {
		
		if(pitchId == null) {
			return "pitchScheduleInit";
		}
		model.addAttribute("pitchId", pitchId);
		return "pitchbooking/pitchSchedule";
	}
	
	@RequestMapping(value = "/createPitchBooking")
	public String addPitchBooking(Model model, Principal principal, @RequestParam("id") Long pitchId) {
		model.addAttribute("pitchBooking", new PitchBooking());
		model.addAttribute("pitchId", pitchId);
		
		AppUser appUser = new AppUser();
		if (principal != null) {
			User loginedUser = (User) ((Authentication) principal).getPrincipal();
			appUser = appUserService.findUserAccount(loginedUser.getUsername());
		}
		Date currentDate = Calendar.getInstance().getTime();
		model.addAttribute("currentDate", currentDate);
		model.addAttribute("timeMap", PitchConstant.TIME_PITCH_BOOKING_MAP);
		model.addAttribute("appUserId", appUser.getUserId());
		return "pitchbooking/pitchBookingDetail";
	}
	
	/*
	@RequestMapping(value = "createPitchBooking", method = RequestMethod.POST)
	public String savePitch(@Validated @RequestBody PitchBooking pitchBooking) {
		
		pitchBookingService.save(pitchBooking);
		return "redirect:pitchSchedule";
	}
	*/
	
	@RequestMapping(value = "savePitchBooking", method = RequestMethod.POST)
	public String savePitch(@Validated @RequestBody PitchBookingDTO pitchBookingDTO) {
		
		pitchBookingService.bookPitch(pitchBookingDTO);
		return "redirect:/pitch";
	}
}
