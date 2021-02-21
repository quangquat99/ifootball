package quang.ph.ifootball.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import quang.ph.ifootball.entity.Role;

@Repository
public interface RoleRepository extends JpaRepository<Role, Long> {

}
