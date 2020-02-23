package shop.model;
import lombok.*;

@Data
@NoArgsConstructor
@AllArgsConstructor

public class Cart {
	
   private Product product;
   private int quantity;
   
    
}
