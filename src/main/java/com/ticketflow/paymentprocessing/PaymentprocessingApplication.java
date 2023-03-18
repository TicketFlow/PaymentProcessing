package com.ticketflow.paymentprocessing;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

@EnableDiscoveryClient
@SpringBootApplication
public class PaymentprocessingApplication {

    public static void main(String[] args) {
        SpringApplication.run(PaymentprocessingApplication.class, args);
    }

}
