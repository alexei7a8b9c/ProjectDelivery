package food.delivery.platform.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
public class ControllerRekvizity {
    @GetMapping("/controllerRekvizity")
    public String controllerRekvizity() {
        return "I am controllerRekvizity in Spring Boot!";
    }
}
