package food.delivery.platform.repository;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Repository {

    @GetMapping("/repository")
    public String repository() {
        return "It's Repository in Spring Boot!";
    }
}