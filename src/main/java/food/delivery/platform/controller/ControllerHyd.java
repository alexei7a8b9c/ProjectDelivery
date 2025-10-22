package food.delivery.platform.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ControllerHyd {

    @GetMapping("/controllerHyd")
    public String controllerHyd() {
        return "This is ControllerHyd!";
    }

}
