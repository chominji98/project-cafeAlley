package com.spring.cafealley.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/shop")
public class ShopboardController {

	@GetMapping("/shopList")
	public void shopList() {}
	
	
	
	//@GetMapping("/")
	
}
