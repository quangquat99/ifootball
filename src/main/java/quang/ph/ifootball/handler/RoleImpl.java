package quang.ph.ifootball.handler;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import quang.ph.ifootball.entity.Role;
import quang.ph.ifootball.repository.RoleRepository;

@Repository
@Transactional
public class RoleImpl {

	@Autowired
	RoleRepository repository;

	public List<Role> findAll() {
		try {
			return repository.findAll();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
			return null;
		}

	}

	public Role findById(Long id) {
		try {
			Role role = repository.findById(id).get();
			return role;
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
			return null;
		}
	}

	public void save(Role role) {
		try {
			repository.save(role);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
	}

	public void delete(Role role) {
		try {
			repository.delete(role);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
	}

}
