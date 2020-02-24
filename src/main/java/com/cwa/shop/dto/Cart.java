package com.cwa.shop.dto;
import com.cwa.shop.model.Product;
import lombok.*;

@Data
@NoArgsConstructor
@AllArgsConstructor

public class Cart {
	
   private Product product;
   private int quantity;
   
    
}
