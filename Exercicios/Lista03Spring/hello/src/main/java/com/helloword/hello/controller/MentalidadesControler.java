package com.helloword.hello.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/mentalidade")
public class MentalidadesControler {

	@GetMapping
	public String mentalidade () {
		return "Mentalidades usadas: \n"
				+ "Persistencia.\n"
				+ "Orientação ao futuro.\n"
				+ "Atenção aos detalhes.";
	}
	
	
	
}
