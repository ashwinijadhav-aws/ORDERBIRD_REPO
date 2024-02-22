package main.java.com.example.myapp.controller;

import main.java.com.example.myapp.service.ExampleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ExampleController {
    @Autowired
    private ExampleService exampleService;

    @GetMapping("/success")
    public ResponseEntity<String> success() {
        return ResponseEntity.ok(exampleService.connectToDatabase());
    }
}