package com.example.orderservice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.core.env.Environment;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class OrderServiceApplication {

    @Autowired
    Environment env;
    @Autowired
    MessageProducer messageProducer;

    public static void main(String[] args) {
        SpringApplication.run(OrderServiceApplication.class, args);
    }

    @PostMapping("/notify")
    public String sendNotification(@RequestBody String message) {
        System.out.println("sending message: " + message);
        messageProducer.send(message);
        System.out.println("Sent message: " + message);
        return message;
    }
}
