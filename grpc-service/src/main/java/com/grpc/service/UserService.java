package com.grpc.service;


import com.grpc.UserList;
import com.grpc.document.User;
import com.grpc.dto.UserDto;
import com.grpc.dto.converter.UserDtoConverter;
import com.grpc.repository.UserRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@AllArgsConstructor
public class UserService {
    final UserDtoConverter userDto;
    final UserRepository userRepository;
    public boolean addUser(User user){
        if( userRepository.existsById(user.getId())){
            return false;
        }else{

            userRepository.save(user);
            return true;
        }
    }
    public List<com.grpc.User> getAllUser(){
     List<com.grpc.User> users=userRepository.findAll().stream().map(userDto::convert).collect(Collectors.toList());
        return users;
    }
}
