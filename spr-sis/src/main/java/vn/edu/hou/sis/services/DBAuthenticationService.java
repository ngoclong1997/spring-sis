package vn.edu.hou.sis.services;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import vn.edu.hou.sis.entities.User;
import vn.edu.hou.sis.repositories.UserRepository;

@Service
public class DBAuthenticationService implements UserDetailsService{

	@Resource
	private UserRepository userRepository;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		User user = userRepository.findByUsername(username);
		if (user == null) {
			System.out.println("None");
            throw new UsernameNotFoundException("User " + username + " was not found in the database");
        }
		List<String> roles= userRepository.getUserRoles(username);
		System.out.println(roles);
		List<GrantedAuthority> grantList= new ArrayList<GrantedAuthority>();
		System.out.println("Hello");
        if(roles!= null)  {
            for(String role: roles)  {
                // ROLE_USER, ROLE_ADMIN,..
                GrantedAuthority authority = new SimpleGrantedAuthority("ROLE_" + role);
                System.out.println("ROLE_" + role);
                grantList.add(authority);
            }
        }
        System.out.println(user.getUsername() + " " + user.getPassword());
        UserDetails userDetails = (UserDetails) new org.springframework.security.core.userdetails.User(user.getUsername(), user.getPassword(), grantList);
		return userDetails;
	}

}
