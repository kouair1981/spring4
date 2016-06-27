package com.example;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

	@RequestMapping("/rest")
	public String test() {
		return "Spring Boot REST DEMO";
	}
}
