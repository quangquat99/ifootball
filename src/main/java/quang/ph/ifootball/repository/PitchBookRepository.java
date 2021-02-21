package quang.ph.ifootball.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import quang.ph.ifootball.entity.PitchBooking;

@Repository
public interface PitchBookRepository extends JpaRepository<PitchBooking, Long> {

}
