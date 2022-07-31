package com.grpc.document;


import lombok.Data;
import org.springframework.data.mongodb.core.mapping.Document;
import org.springframework.data.mongodb.repository.config.EnableMongoRepositories;

import javax.persistence.Column;

@Data
@EnableMongoRepositories
@Document("User")
public class User {
    @Column(name="id")
    String id;
    @Column(name="name")
    String name;

}
