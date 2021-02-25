package quang.ph.ifootball.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import quang.ph.ifootball.entity.Pitch;
import quang.ph.ifootball.entity.PitchBooking;
import quang.ph.ifootball.service.PitchBookingService;

@Controller
public class PitchBookingController {
	
	@Autowired
	private PitchBookingService pitchBookingService;
	
	@RequestMapping(value = "/pitchSchedule", method = RequestMethod.GET)
	public String deletePitch(Model model, Principal principal, @RequestParam("id") Long pitchId) {
		
		if(pitchId == null) {
			return "pitchScheduleInit";
		}
		return "/pitchbooking/pitchSchedule";
	}
	
	@RequestMapping(value = "/createPitchBooking")
	public String addPitchBooking(Model model, Principal principal) {
		model.addAttribute("pitchBooking", new PitchBooking());
		return "/pitchbooking/pitchBookingDetail";
	}
	
	/*
	@RequestMapping(value = "createPitchBooking", method = RequestMethod.POST)
	public String savePitch(@Validated @RequestBody PitchBooking pitchBooking) {
		
		pitchBookingService.save(pitchBooking);
		return "redirect:pitchSchedule";
	}
	*/
}
