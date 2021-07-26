package com.helloword.hello.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/agenda")
public class AgendaSemanal {
	
	@GetMapping
	public String agenda () {
		return "Pretendo: \n"
				+ "Estudar mais.\n"
				+ "Focar mais.\n"
				+ "Aprender tudo que deixei para trás.\n"
				+ "Chorar menos."; 
	}

}
