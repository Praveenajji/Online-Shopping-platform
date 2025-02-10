package com.example.register.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.register.entity.Chips;
import com.example.register.service.ChipsService;

@Controller
public class Chipscontroller {

	private final ChipsService chipsService;

	public Chipscontroller(ChipsService chipsService) {
		super();
		this.chipsService = chipsService;
	}
	
	@PostMapping("/add-product")
	public String addProduct(Chips chips) {
		chipsService.addProduct(chips);
		return "start.jsp";
	}
	
	@GetMapping("/display-product")
	public String findAllProductr(Model model) {
		List<Chips> chips=chipsService.findAllProduct();
		model.addAttribute("chips", chips);
		return "display.jsp";
	}
	
	@GetMapping("/delete-product")
	public String deleteproduct(@RequestParam("chips_id") int  chipsid) {
		chipsService.deleteproduct(chipsid);
		return "display-product";
	}
	
	
	@GetMapping("/update-product")
	public String findbyChipscard(@RequestParam("chips_id") int chipsid,Model model) {
		Chips chips=chipsService.findbyChipscard(chipsid);
		model.addAttribute("chips", chips);
		return "fetch.jsp";
	}
	@PostMapping("/update-products")
	public String editCard(@ModelAttribute Chips chips) {
		chipsService.editCard(chips);
		return "redirect:/display-product";
	}
}
