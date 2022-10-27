package intens.api.praksa2022.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DemoController {
    @RequestMapping("/")
    public ResponseEntity<String> getRootDemo() {

        return ResponseEntity.ok().body("Intens Praksa 2022!");
    }
}
