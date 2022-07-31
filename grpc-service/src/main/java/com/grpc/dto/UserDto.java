package com.grpc.dto;

import com.grpc.document.User;
import com.grpc.repository.UserRepository;
import lombok.Data;

import java.util.List;

@Data
public class UserDto {
    String id;
    String name;
}
