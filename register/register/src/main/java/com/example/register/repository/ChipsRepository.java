package com.example.register.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.register.entity.Chips;



@Repository
public interface ChipsRepository extends JpaRepository<Chips, Integer>{

}
