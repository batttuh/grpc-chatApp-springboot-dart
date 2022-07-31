package com.grpc.repository;


import com.grpc.document.User;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends MongoRepository<User,String> {
   boolean findUserByName(User user);

}
