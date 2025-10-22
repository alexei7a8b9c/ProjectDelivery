package food.delivery.platform.service;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
public class ControllerRek {
    @GetMapping("/controllerRekvizity")
    public String controllerRekvizity() {
        return "I am controllerRekvizity in Spring Boot!";
    }
<<<<<<< HEAD

    @GetMapping("/controllerRekv")
    public String controllerRekv() {
        return "I am controllerRekv in Spring Boot!";
    }
=======
>>>>>>> 4118c860be7f3ffcffa32af376289f078861aa92
}
