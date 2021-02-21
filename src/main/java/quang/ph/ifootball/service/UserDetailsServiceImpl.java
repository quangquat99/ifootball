package quang.ph.ifootball.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import quang.ph.ifootball.entity.AppUser;
import quang.ph.ifootball.handler.AppUserImpl;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {

	@Autowired
	private AppUserImpl userImpl;

	@Override
	public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
		AppUser user = this.userImpl.findUserAccount(userName);

		if (user == null) {
			System.out.println("User not found! " + userName);
			throw new UsernameNotFoundException("User " + userName + " was not found in the database");
		}

		System.out.println("Found User: " + user);

		
		// [ROLE_USER, ROLE_ADMIN,..]
		String roleName = user.getRole().getRoleName();

		List<GrantedAuthority> grantList = new ArrayList<GrantedAuthority>();
		if (roleName != null) {
			GrantedAuthority authority = new SimpleGrantedAuthority(roleName);
			grantList.add(authority);

		}
		/*
		// [ROLE_USER, ROLE_ADMIN,..]
		List<String> roleNames = this.roleImpl.getRoleNames(user.getUserId());

		List<GrantedAuthority> grantList = new ArrayList<GrantedAuthority>();
		if (roleNames != null) {
			for (String role : roleNames) {
				// ROLE_USER, ROLE_ADMIN,..
				GrantedAuthority authority = new SimpleGrantedAuthority(role);
				grantList.add(authority);
			}
		}
		*/
		
		/*
		Set<GrantedAuthority> grantedAuthorities = new HashSet<>();
        Set<Role> roles = user.getRoles();
        for (Role role : roles) {
            grantedAuthorities.add(new SimpleGrantedAuthority(role.getName()));
        }
        */

		UserDetails userDetails = (UserDetails) new User(user.getUsername(), //
				user.getEncrytedPassword(), grantList);

		return userDetails;
	}

}

