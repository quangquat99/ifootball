package quang.ph.ifootball.service;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import quang.ph.ifootball.constant.PitchConstant;
import quang.ph.ifootball.dto.PitchBookingDTO;
import quang.ph.ifootball.entity.PitchBooking;
import quang.ph.ifootball.handler.PitchBookingImpl;

@Service
public class PitchBookingService {
	
	@Autowired
	private PitchService pitchService;
	
	@Autowired
	private AppUserService appUserService;

	@Autowired
	private PitchBookingImpl pitchBookingImpl;

	public List<PitchBooking> findAll() {
		List<PitchBooking> list = pitchBookingImpl.findAll();
		return list;
	}

	/*
	 * public PitchBooking findById(long pitchId) { return
	 * pitchBookingImpl.findById(pitchId); }
	 */

	public void bookPitch(PitchBookingDTO pitchBookingDTO) {
		PitchBooking pitchBooking = pitchBookingDTO.getPitchBooking();
		Map<String, Date> timeMap = convert2Time(pitchBookingDTO.getDate(), pitchBookingDTO.getTimeKey());
		pitchBooking.setTime_start(timeMap.get("time_start"));
		pitchBooking.setTime_finish(timeMap.get("time_finish"));
		pitchBooking.setUser(appUserService.findById(pitchBooking.getUser().getUserId()));
		pitchBooking.setPitch(pitchService.findById(pitchBooking.getPitch().getPitchId()));
		
		pitchBookingImpl.save(pitchBooking);
	}

	public void delete(PitchBooking pitchBooking) {
		pitchBookingImpl.delete(pitchBooking);
	}
	
	public Map<String, Date> convert2Time(String date, int timeKey) {
		Map<String, Date> timeMap = new HashMap<String, Date>();
		String time = PitchConstant.TIME_PITCH_BOOKING_MAP.get(timeKey);
		String[] time_splits = time.split("-");
		
		try {
			Date time_start= new SimpleDateFormat("yyyy-mm-dd HH:mm").parse(date + " " + time_splits[0].trim());
			Date time_finish = new SimpleDateFormat("yyyy-mm-dd HH:mm").parse(date + " " + time_splits[1].trim());
			timeMap.put("time_start", time_start);
			timeMap.put("time_finish", time_finish);
			return timeMap;
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
}
