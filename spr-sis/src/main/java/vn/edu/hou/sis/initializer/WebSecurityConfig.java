package vn.edu.hou.sis.initializer;

import java.io.IOException;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import vn.edu.hou.sis.services.DBAuthenticationService;


@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	DBAuthenticationService myDBAauthenticationService;

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(myDBAauthenticationService);
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.csrf().disable();
		
		http.authorizeRequests().antMatchers("/", "/home", "/login", "/logout").permitAll();
		
		http.authorizeRequests().antMatchers("/user-info").access("hasAnyRole('ROLE_SINH_VIEN', 'ROLE_CAN_BO_TUYEN_SINH', 'ROLE_GIAO_VU')");
		
		http.authorizeRequests().antMatchers("/giao-vu", "/nghiep-vu/quan-ly-nganh-hoc", "/nghiep-vu/quan-ly-lop-hoc",  "/nghiep-vu/quan-ly-khoa-hoc")
			.access("hasRole('ROLE_GIAO_VU')");
		
		http.authorizeRequests().antMatchers("/can-bo-tuyen-sinh", "/nghiep-vu/quan-ly-ho-so-du-tuyen").access("hasRole('ROLE_CAN_BO_TUYEN_SINH')");
		
		http.authorizeRequests().and().exceptionHandling().accessDeniedPage("/403-no-permission");
		
		// Config for Login Form
		http.authorizeRequests().and().formLogin()
		.loginProcessingUrl("/j_spring_security_check")
		.loginPage("/login")
		.failureUrl("/login?error=true")
		.successHandler(getAuthenticationSuccessHandler())
        .usernameParameter("username")
        .passwordParameter("password")
        .and().logout().logoutUrl("/log-out").logoutSuccessUrl("/login");
	}
	
	public AuthenticationSuccessHandler getAuthenticationSuccessHandler() {
		AuthenticationSuccessHandler authenticationSuccessHandler = new AuthenticationSuccessHandler() {
			
			private RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();
			
			@Override
			public void onAuthenticationSuccess(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Authentication authentication)
					throws IOException, ServletException {
				HttpSession session = httpServletRequest.getSession();
		        User authUser = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		        session.setAttribute("username", authUser.getUsername());
		        session.setAttribute("authorities", authentication.getAuthorities());
		 
		        //set our response to OK status
		        httpServletResponse.setStatus(HttpServletResponse.SC_OK);
		 
		        //since we have created our custom success handler, its up to us to where
		        //we will redirect the user after successfully login
		        Set<String> authorities = AuthorityUtils.authorityListToSet(authentication.getAuthorities());
		        String targetUrl = "";
		        for (String s : authorities) {
		        	System.out.println(s);
		        }
		        if (authorities.contains("ROLE_GIAO_VU")) {
		        	targetUrl = "/giao-vu";
		        } else if (authorities.contains("ROLE_CAN_BO_TUYEN_SINH")) {
		        	targetUrl = "/can-bo-tuyen-sinh";
		        } else if (authorities.contains("ROLE_SINH_VIEN") || authorities.contains("ROLE_GIAO_VU") || authorities.contains("ROLE_CAN_BO_TUYEN_SINH")){
		        	targetUrl = "/user-info";
		        } else {
		        		throw new IllegalStateException();
		        }
				
		        redirectStrategy.sendRedirect(httpServletRequest, httpServletResponse, targetUrl);
			}
		};
		return authenticationSuccessHandler;
	}
}
