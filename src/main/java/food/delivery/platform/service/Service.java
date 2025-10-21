package food.delivery.platform.service;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Service {

    @GetMapping("/service")
    public String service() {
        return "This is SERVICE in Spring Boot!";
    }
}