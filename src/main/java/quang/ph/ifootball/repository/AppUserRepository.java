package quang.ph.ifootball.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import quang.ph.ifootball.entity.AppUser;

@Repository
public interface AppUserRepository extends JpaRepository<AppUser, Long> {

}