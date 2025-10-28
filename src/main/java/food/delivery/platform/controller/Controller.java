package food.delivery.platform.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controller {

    /*
             Simple methods =)
     */

    @GetMapping("/controller")
    public String controller() {
        return "I am Controller Spring Boot!";
    }

    @GetMapping("/search")
    public String search() {
        return "I am search on Spring Boot!";
    }

    @GetMapping("/upload")
    public String upload() {
        return "I am upload files at Spring Boot!";
    }

    @GetMapping("/get/{id}")
    public String get() {
        return "I am getting files into browser!";
    }

    @GetMapping("/post")
    public String post() {
        return "I am post into browser!";
    }

    @GetMapping("/put")
    public String put() {
        return "I am put into browser!";
    }

    @GetMapping("/delete/{id}")
    public String delete() {
        return "I am delete into browser!";
    }

}