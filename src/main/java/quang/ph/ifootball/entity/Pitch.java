package quang.ph.ifootball.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.UniqueConstraint;

import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.format.annotation.DateTimeFormat;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "pitch", //
		uniqueConstraints = { //
				@UniqueConstraint(name = "PITCH_UK", columnNames = { "pitch_id", "name" }) })
@Getter
@Setter
public class Pitch {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "pitch_id", nullable = false)
	private Long pitchId;

	@Column(name = "name", length = 30, nullable = false)
	private String name;

	@Column(name = "email", nullable = false)
	private String email;

	@Column(name = "quantity", nullable = false)
	private int quantity;

	@Column(name = "description", nullable = false)
	private String description;

	@Column(name = "address", nullable = false)
	private String address;

	@Column(name = "image", nullable = false)
	private String image;

	@Column(name = "phonenumber", nullable = false)
	private String phonenumber;

	@Column(name = "updated_at", nullable = false)
	@Temporal(TemporalType.TIMESTAMP)
	@LastModifiedDate
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date updated_at;

	@Column(name = "cost", nullable = false)
	private double cost;
	
	@OneToMany(mappedBy = "pitch", cascade = CascadeType.PERSIST, orphanRemoval = true)
	private List<PitchBooking> users = new ArrayList<>();
}
