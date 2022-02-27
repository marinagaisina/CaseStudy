package com.marinagaisina.casestudy.config;

import com.marinagaisina.casestudy.security.UserDetailsServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled=true)
public class SecurityConfig extends WebSecurityConfigurerAdapter {

//	@Autowired
//	private AuthenticationSuccessHandlerImpl successHandler;
//
//	@Autowired
//	private AuthenticationFailureHandlerImpl failureHandler;
//
    @Autowired
    private UserDetailsServiceImpl userDetailsService;

//	@Bean
//	public LoginUrlAuthenticationEntryPoint getAuthenticationEntryPoint() {
//		return new AuthenticationEntryPointImpl("/login/login");
//	}

    @Override
    protected void configure(final HttpSecurity http) throws Exception {
        http
                .csrf().disable()
//			.headers()
                // frame options implemented in a custom filter
//				.frameOptions().disable()
//				.and()
                .authorizeRequests()
                // this line allows access to these URLs whithout the user logged in
                // they are considered public URLs
                // ** TODO THESE 2 LINES WILL PROBABLY NEED TO BE CHANGED FOR YOUR PROJECT **

                //.antMatchers("/pub/**", "/error/**", "/login/**").permitAll()
                .antMatchers("/**").permitAll()

                // these are URLs that the user must be authenticated for

                //.antMatchers("/case/packages/**", "/case/admin/**", "/case/user/**").authenticated()
                //.antMatchers("/**").authenticated()
                .and()
                .formLogin()
                // this is the URL for the login page - displays your JSP page for login
                // this needs to be implemented in a controller.  This will get called when there is an invalid login attempt
                // TODO create a controller method for this URL
                .loginPage("/case")
                //.successForwardUrl("/case/admin")

                // this is the URL where the login page submits to be processed by spring security
                // !!!!!!!!!!!!!!!!!!!!!!!! this is implemented by spring security and does not need a controller
                // TODO make your login page form action point to this URL with a method = POST
                .loginProcessingUrl("/case/loginSecurityPost")
                //.successHandler(successHandler)
                //.failureHandler(failureHandler)
                .and()
                .logout()
                // invalidating the session removes the JSESSION_ID cookie from the browser
                // and removes the user session from tomcat and from spring security
                .invalidateHttpSession(true)

                // this is the URL that logs out a user.   So in your menu when you implement
                // !!!!!!!!!!!!!!!!!!!!!!!! this is implemented by spring security in a hidden controller specific for spring security
                // we do not need to create a controller method for this in our controllers
                // TODO make your logout link in your header point to this URL
                .logoutUrl("/case/logout")

                // this is the URL the user will be redirected to after the have logged out this can be any page you want
                // TODO implement a method in your LoginController to set the view for this URL
                .logoutSuccessUrl("/case/logoutSuccess")
                .and()
//	        .rememberMe()
//	        	// this configuration is for remember me and is not required for the class
//				// but it would be nice if you implement it
//				// This you will not need for your case study unless you want to do advanced configuration
//				.key("SR_KEY_1")
//	        	.tokenValiditySeconds(60 * 60 * 24 * 30)
//	        	.rememberMeParameter("remember-me")
//	        	.and()
                .exceptionHandling()
                //.authenticationEntryPoint(getAuthenticationEntryPoint())
                // this is the URL for the access denied page.
                .accessDeniedPage("/error/404");
    }

    @Bean
    public DaoAuthenticationProvider getAuthenticationProvider() {
        DaoAuthenticationProvider authProvider = new DaoAuthenticationProvider();
        authProvider.setUserDetailsService(userDetailsService);
        authProvider.setPasswordEncoder(getPasswordEncoder());
        return authProvider;
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userDetailsService);
        auth.authenticationProvider(getAuthenticationProvider());
    }

    @Bean
    @Override
    public AuthenticationManager authenticationManagerBean() throws Exception {
        return super.authenticationManagerBean();
    }

    @Bean(name="passwordEncoder")
    public PasswordEncoder getPasswordEncoder() {
        return new BCryptPasswordEncoder();
    }

}