package quang.ph.ifootball.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import quang.ph.ifootball.entity.PitchBooking;
import quang.ph.ifootball.handler.PitchBookingImpl;

@Service
public class PitchBookingService {

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

	public void save(PitchBooking pitchBooking) {
		pitchBookingImpl.save(pitchBooking);
	}

	public void delete(PitchBooking pitchBooking) {
		pitchBookingImpl.delete(pitchBooking);
	}
}
