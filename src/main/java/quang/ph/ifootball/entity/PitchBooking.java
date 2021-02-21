package quang.ph.ifootball.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "pitch_booking")
@Getter
@Setter
public class PitchBooking {
	
	@EmbeddedId
    private PitchUserKey id;
	
	@Column(name = "pitch_no", nullable = false)
	private int pitch_no;

	@Column(name = "time_start", nullable = false)
	@Temporal(TemporalType.TIMESTAMP)
	private Date time_start;

	@Column(name = "time_finish", nullable = false)
	@Temporal(TemporalType.TIMESTAMP)
	private Date time_finish;

	@Column(name = "price", nullable = false)
	private double price;

	@Column(name = "note", nullable = false)
	private String note;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@MapsId("user_id")
	@JoinColumn(name = "user_id", nullable = false)
	private AppUser user;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@MapsId("pitch_id")
	@JoinColumn(name = "pitch_id", nullable = false)
	private Pitch pitch;
}
