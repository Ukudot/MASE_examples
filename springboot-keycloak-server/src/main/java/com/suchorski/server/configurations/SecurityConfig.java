package com.suchorski.server.configurations;

import io.micrometer.core.instrument.cumulative.CumulativeCounter;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityCustomizer;
import org.springframework.security.oauth2.client.registration.ReactiveClientRegistrationRepository;
import org.springframework.security.oauth2.client.web.OAuth2AuthorizationRequestCustomizers;
import org.springframework.security.oauth2.client.web.server.DefaultServerOAuth2AuthorizationRequestResolver;
import org.springframework.security.oauth2.client.web.server.ServerOAuth2AuthorizationRequestResolver;
import org.springframework.security.web.SecurityFilterChain;

@EnableWebSecurity
@Configuration
public class SecurityConfig {

    @Bean
    public SecurityFilterChain  filterChain(HttpSecurity http) throws Exception {
        http
                .authorizeHttpRequests((auth) -> auth
                        .anyRequest().authenticated());
//        http.formLogin(Customizer.withDefaults());
//        http.oauth2ResourceServer((oauth) -> oauth.jwt(Customizer.withDefaults()));
        http.oauth2Login(Customizer.withDefaults());
//        http.oauth2Client(Customizer.withDefaults());
        return http.build();
    }

    @Bean
    public WebSecurityCustomizer customWebSecurity() {
        return (web) -> web.ignoring().requestMatchers("/auth/**");
    }
}
