package com.example.register.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Chips {

	 
		@Id
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		private int chipsid;
		private String chipsdetails;
		private String chipsprice;
		public int getChipsid() {
			return chipsid;
		}
		public void setChipsid(int chipsid) {
			this.chipsid = chipsid;
		}
		public String getChipsdetails() {
			return chipsdetails;
		}
		public void setChipsdetails(String chipsdetails) {
			this.chipsdetails = chipsdetails;
		}
		public String getChipsprice() {
			return chipsprice;
		}
		public void setChipsprice(String chipsprice) {
			this.chipsprice = chipsprice;
		}
		
	    
}
