package com.grpc.service;

import com.grpc.*;
import io.grpc.stub.StreamObserver;
import lombok.AllArgsConstructor;
import net.devh.boot.grpc.server.service.GrpcService;

import java.util.ArrayList;
import java.util.List;

import static java.util.stream.Collectors.toList;


@GrpcService
@AllArgsConstructor
public class GrpcServerService extends ChatServiceGrpc.ChatServiceImplBase {
    final UserService userService;
    final com.grpc.document.User userDto=new com.grpc.document.User();
    ArrayList<ChatMessage> observers = new ArrayList<>();
    @Override
    public void join(User request, StreamObserver<JoinResponse> responseObserver) {
        userDto.setId(request.getId());
        userDto.setName(request.getName());
         if(userService.addUser(userDto)){
            responseObserver.onNext(JoinResponse.newBuilder().setMsg("Success").setError(0).build());
         }else{
             responseObserver.onNext(JoinResponse.newBuilder().setMsg("User Already Exist").setError(1).build());
         }
         responseObserver.onCompleted();

    }

    @Override
    public void sendMsg(ChatMessage request, StreamObserver<Empty> responseObserver) {
        observers.add(request);
        responseObserver.onCompleted();
    }

    @Override
    public void receiveMsg(Empty request, StreamObserver<ChatMessage> responseObserver) {
        observers.stream().forEach(responseObserver::onNext);
        responseObserver.onCompleted();

    }

    @Override
    public void getAllUsers(Empty request, StreamObserver<UserList> responseObserver) {
        responseObserver.onNext(UserList.newBuilder().addAllUsers(userService.getAllUser()).build());
        responseObserver.onCompleted();
    }
}
