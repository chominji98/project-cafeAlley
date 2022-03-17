package com.spring.cafealley.controller;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.cafealley.command.OrderingVO;
import com.spring.cafealley.ordering.service.IOrderingService;

@Controller
@RequestMapping("/ordering")
public class OrderingController {
	
	@Autowired
	IOrderingService service;
	
	
	@GetMapping("/orderRegist")
	public void regist() {}

	@PostMapping("/orderRegist")
	public String orderRegist(OrderingVO vo){
		System.out.println("/ordering/orderRegist: POST");
		System.out.println(vo);
		service.order(vo);
		
		return "ordering/orderFinish";
	}
	
	@GetMapping("/orderFinish")
	public void finish() {}
	
	@GetMapping("/orderManagement")
	public void manage(Model model){
		System.out.println("/ordering/orderManagement: GET");
		model.addAttribute("orderlist" ,service.getList());		
	}	
	
}
