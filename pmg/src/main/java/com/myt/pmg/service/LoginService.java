package com.myt.pmg.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class LoginService implements UserDetailsService {

	@Autowired
	private UserService userService;

	public UserDetails loadUserByUsername(String email) {
		if (email == null)
			return null;
		com.myt.pmg.model.User user = userService.findByEmail(email);
		if (user == null)
			throw new UsernameNotFoundException("Oops!");
		user.setRole("ROLE_USER");
		// ROLES:- Remove from Signup page
		// ROLE_USER
		// ROLE_ADMIN
		//new String(UUID.randomUUID());
		List<SimpleGrantedAuthority> authorities = new ArrayList<SimpleGrantedAuthority>();
		/*
		 * for (String role : user.getRole()) {
		 * 
		 * if (role == null) { role = "ROLE_USER"; } authorities.add(new
		 * SimpleGrantedAuthority(user.getRole())); }
		 */

		authorities.add(new SimpleGrantedAuthority(user.getRole()));

		return new User(user.getEmail(), user.getPassword(), user.isActive(), !user.isBanned(), true, true,
				authorities);

	}

}
