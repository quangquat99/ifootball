package quang.ph.ifootball.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class PitchUserKey implements Serializable {
	@Column(name = "user_id")
	Long userId;

	@Column(name = "pitch_id")
	Long pitchId;

	// standard constructors, getters, and setters
	// hashcode and equals implementation
}
