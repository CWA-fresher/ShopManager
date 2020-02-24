package com.cwa.shop.dto;

import com.cwa.shop.model.Category;
import com.cwa.shop.model.OrderDetail;
import lombok.*;
import org.springframework.web.multipart.MultipartFile;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import java.io.Serializable;
import java.util.Set;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class ProductDto implements Serializable {

    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    private String code;

    private String name;

    private MultipartFile image;

    private Double price;

    private String description;

    private int active;

    private Category category;

    private Set<OrderDetail> orderDetails;

    public ProductDto(String code, String name, MultipartFile image, Double price, String description, int active, Category category) {
        this.code = code;
        this.name = name;
        this.image = image;
        this.price = price;
        this.description = description;
        this.active = active;
        this.category = category;
    }
}

