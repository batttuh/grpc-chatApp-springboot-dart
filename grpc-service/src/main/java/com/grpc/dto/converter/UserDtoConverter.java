package com.grpc.dto.converter;


import com.grpc.document.User;
import com.grpc.dto.UserDto;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Component;

@Component
public class UserDtoConverter {


    public com.grpc.User convert(User from){
        return com.grpc.User.newBuilder().setId(from.getId())
                .setName(from.getName()).build();
    }
}
