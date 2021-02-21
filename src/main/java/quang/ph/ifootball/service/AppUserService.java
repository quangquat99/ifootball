package quang.ph.ifootball.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import quang.ph.ifootball.entity.Role;
import quang.ph.ifootball.entity.AppUser;
import quang.ph.ifootball.handler.RoleImpl;
import quang.ph.ifootball.handler.AppUserImpl;

@Service
public class AppUserService {

	@Autowired
	private AppUserImpl userImpl;

	@Autowired
	private RoleImpl roleImpl;

	// Config in WebSecurityConfig
	@Autowired
	private PasswordEncoder passwordEncoder;

	public List<AppUser> findAll() {
		return userImpl.findAll();
	}

	public AppUser findById(long userId) {
		return userImpl.findById(userId);
	}

	public void save(AppUser user) {
		String encrytedPassword = passwordEncoder.encode(user.getEncrytedPassword());
		user.setEncrytedPassword(encrytedPassword);
		
		
		Long roleId = 2l;
		Role role = roleImpl.findById(roleId);
		user.setRole(role);
		
		userImpl.save(user);
	}

	public void delete(AppUser user) {
		userImpl.delete(user);
	}

	public AppUser findUserAccount(String userName) {
		return userImpl.findUserAccount(userName);
	}

}
