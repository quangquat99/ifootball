package quang.ph.ifootball.dto;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import quang.ph.ifootball.entity.PitchBooking;

@Getter
@Setter
public class PitchBookingDTO {
	
	PitchBooking pitchBooking;
	Date date;
	int timeKey;
}
