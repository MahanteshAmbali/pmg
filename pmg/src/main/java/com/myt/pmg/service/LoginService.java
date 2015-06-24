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

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public UserDetails loadUserByUsername(String email)
			throws UsernameNotFoundException {
		if(email==null) return null;
		com.myt.pmg.model.User user = userService.findByEmail(email);
		
		if (user == null)
			throw new UsernameNotFoundException("Oops!");

		List<SimpleGrantedAuthority> authorities = new ArrayList<SimpleGrantedAuthority>();
		for (String role : user.getRole()) {
			authorities.add(new SimpleGrantedAuthority(role));
		}
		
		return new User(user.getUsername(), user.getPassword(),
				user.isActive(), (!user.isBanned()), true, true, authorities);
		
	}

}
