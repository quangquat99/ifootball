package quang.ph.ifootball.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import quang.ph.ifootball.entity.Pitch;

@Repository
public interface PitchRepository extends JpaRepository<Pitch, Long> {

}
