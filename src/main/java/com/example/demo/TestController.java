package com.example.demo;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;


@RestController
@RequestMapping("test")
public class TestController {
    @GetMapping("test")
    public String getMethodName(@RequestParam String param) {
        return "Hello Test World";
    }
    
}
