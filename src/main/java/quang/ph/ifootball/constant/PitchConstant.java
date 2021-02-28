package quang.ph.ifootball.constant;

import java.util.HashMap;
import java.util.Map;

public class PitchConstant {

	public static final String NAME_MAP_TIME_PITCH_BOOKING = "MAP_TIME_PITCH_BOOKING";
	public static Map<Integer, String> TIME_PITCH_BOOKING_MAP = new HashMap<>();
	static {
		TIME_PITCH_BOOKING_MAP.put(0, "05:30 - 07:00");
		TIME_PITCH_BOOKING_MAP.put(1, "07:00 - 08:30");
		TIME_PITCH_BOOKING_MAP.put(2, "08:30 - 10:00");
		TIME_PITCH_BOOKING_MAP.put(3, "10:00 - 11:30");
		TIME_PITCH_BOOKING_MAP.put(4, "11:30 - 13:00");
		TIME_PITCH_BOOKING_MAP.put(5, "13:00 - 14:30");
		TIME_PITCH_BOOKING_MAP.put(6, "14:30 - 16:00");
		TIME_PITCH_BOOKING_MAP.put(7, "16:00 - 17:30");
		TIME_PITCH_BOOKING_MAP.put(8, "17:30 - 19:00");
		TIME_PITCH_BOOKING_MAP.put(9, "19:00 - 20:30");
		TIME_PITCH_BOOKING_MAP.put(10, "20:30 - 22:00");
		TIME_PITCH_BOOKING_MAP.put(11, "22:00 - 23:30");

	}

}
