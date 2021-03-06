package quang.ph.ifootball.dto;

import lombok.Getter;
import lombok.Setter;
import quang.ph.ifootball.entity.PitchBooking;

@Getter
@Setter
public class PitchBookingDTO {

	PitchBooking pitchBooking;
	String date;
	int timeKey;
}
