package quang.ph.ifootball.handler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import quang.ph.ifootball.entity.AppUser;
import quang.ph.ifootball.repository.AppUserRepository;

@Repository
@Transactional
public class AppUserImpl {

	@Autowired
	AppUserRepository repository;

	public List<AppUser> findAll() {
		try {
			return repository.findAll();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
			return null;
		}

	}

	public AppUser findById(Long id) {
		try {
			AppUser user = repository.findById(id).get();
			return user;
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
			return null;
		}
	}

	public void save(AppUser user) {
		try {
			repository.save(user);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
	}

	public void delete(AppUser user) {
		try {
			repository.delete(user);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
	}

	public AppUser findUserAccount(String userName) {
		try {
			AppUser user = new AppUser();
			List<AppUser> list = repository.findAll();
			for (AppUser u : list) {
				if (userName.equals(u.getUsername())) {
					user = u;
				}
			}
			return user;
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
	}
}
