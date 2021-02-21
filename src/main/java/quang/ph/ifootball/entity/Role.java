package quang.ph.ifootball.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "Role", //
		uniqueConstraints = { //
				@UniqueConstraint(name = "ROLE_UK", columnNames = "role_name") })
@Getter
@Setter
public class Role {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "role_id", nullable = false)
	private Long roleId;

	@Column(name = "role_name", length = 30, nullable = false)
	private String roleName;

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "role")
	private Set<AppUser> listAppUsers = new HashSet<>();
}
