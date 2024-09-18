package org.example.study1;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication
@EnableScheduling
@MapperScan({"org.example.study1.user","org.example.study1.scheduled"}) // 패키지 경로를 맞게 설정합니다.

public class Study1Application {

    public static void main(String[] args) {
        SpringApplication.run(Study1Application.class, args);
    }

}
