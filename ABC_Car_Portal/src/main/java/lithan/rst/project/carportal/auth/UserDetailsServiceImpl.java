package lithan.rst.project.carportal.auth;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;

import lithan.rst.project.carportal.daos.UserRepository;
import lithan.rst.project.carportal.entities.Role;
import lithan.rst.project.carportal.entities.User;

import javax.transaction.Transactional;

@Transactional
public class UserDetailsServiceImpl implements UserDetailsService {
    @Autowired
    private UserRepository userRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;

    public UserDetailsServiceImpl() {
    }

    public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
    	
        User user = userRepository.findByUserName(userName);
        if(user == null) {
            throw new UsernameNotFoundException("user " + userName + " is not valid. Please re-enter.");
        }
        org.springframework.security.core.userdetails.User.UserBuilder userBuilder = org.springframework.security.core.userdetails.User.builder();
        
        String[] roleNames= user.getRoles().stream().map(Role::getName).toArray(String[]::new);
        
        System.out.println("Role Name is "+roleNames);
        
        return userBuilder.username(user.getUserName())
                        .password(user.getPassword())
                        .roles(roleNames)
                        .passwordEncoder(passwordEncoder::encode)
                        .build();
    }
}
