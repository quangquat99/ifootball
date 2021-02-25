package quang.ph.ifootball.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

import lombok.Getter;
import lombok.Setter;

@Embeddable
@Getter
@Setter
public class PitchBookingKey implements Serializable {
	@Column(name = "user_id")
	Long userId;

	@Column(name = "pitch_id")
	Long pitchId;

	// standard constructors, getters, and setters
	// hashcode and equals implementation
}
