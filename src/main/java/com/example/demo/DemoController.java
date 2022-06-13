package com.example.demo;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RestController
public class DemoController {
    @RequestMapping("/")
    public String home() {
        log.info("log 1 info");
        log.info("log 2 info");
        log.debug("log 3 debug");
        return "Hello Docker World";
    }
}
