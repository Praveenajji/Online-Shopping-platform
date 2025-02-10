package com.example.register.service;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.example.register.entity.Chips;
import com.example.register.repository.ChipsRepository;
@Service
public class ChipsService {
	
	private final ChipsRepository chipsRepository;

	public ChipsService(ChipsRepository chipsRepository) {
		super();
		this.chipsRepository = chipsRepository;
	}

	
	public void addProduct(Chips chips) {
		chipsRepository.save(chips);
		
	}
	
	public List<Chips> findAllProduct() {
		return chipsRepository.findAll();
	}


	public void deleteproduct(int chipsid) {
		Chips chips=this.findbyChipscard(chipsid);
		 chipsRepository.deleteById(chipsid);
		
	}
	
	
	


	public void editCard(Chips chips) {
		this.findbyChipscard(chips.getChipsid());
		 chipsRepository.save(chips);
		
	}
	public Chips findbyChipscard(int chipsid) {
		return chipsRepository.findById(chipsid).orElse(null);		
		}


	
	
	

}
