package food.delivery.platform.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controller {

    @GetMapping("/controller")
    public String controller() {
        return "I am Controller Spring Boot!";
    }
}