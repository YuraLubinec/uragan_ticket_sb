package com.oblenergo.configuration;

import org.apache.commons.dbcp.BasicDataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationFailureHandler;
import org.springframework.security.web.authentication.logout.HttpStatusReturningLogoutSuccessHandler;

@Configuration
@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

  @Autowired
  private RestUnauthorizedEntryPoint entryPoint;

  @Autowired
  private RestAuthenticationSuccessHandler successHandler;

  @Autowired
  private BasicDataSource dataSource;

  @Override
  protected void configure(HttpSecurity http) throws Exception {

    http.authorizeRequests().antMatchers("/", "/templates/login-page.template.html", "/templates/navbar.template.html").permitAll().anyRequest().authenticated()
        .and().exceptionHandling().authenticationEntryPoint(entryPoint).and().formLogin().loginPage("/login").successHandler(successHandler)
        .failureHandler(new SimpleUrlAuthenticationFailureHandler()).loginProcessingUrl("/loginCheck").usernameParameter("username")
        .passwordParameter("password").and().logout().logoutUrl("/logout").logoutSuccessHandler(new HttpStatusReturningLogoutSuccessHandler())
        .deleteCookies("JSESSIONID").and().csrf().disable();
  }

  @Bean
  public RestAuthenticationSuccessHandler successHandler() {

    return new RestAuthenticationSuccessHandler();
  }

  @Override
  public void configure(WebSecurity web) throws Exception {

    web.ignoring().antMatchers("/css/**");
    web.ignoring().antMatchers("/dist/**");
    web.ignoring().antMatchers("/images/**");
    web.ignoring().antMatchers("/modules/**");
    web.ignoring().antMatchers("/app.config.js");
    web.ignoring().antMatchers("/app.module.js");

  }

  @Override
  protected void configure(AuthenticationManagerBuilder auth) throws Exception {

    auth.jdbcAuthentication().dataSource(dataSource).passwordEncoder(passwordEncoder())
        .usersByUsernameQuery("SELECT username, password, 1 FROM user WHERE username = ?")
        .authoritiesByUsernameQuery("SELECT username, role FROM user WHERE username = ?");
  }

  @Bean
  public PasswordEncoder passwordEncoder() {

    BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
    System.out.println(passwordEncoder.encode("1"));

    return new BCryptPasswordEncoder();
  }

}