package com.cwa.shop.model;

import lombok.*;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Set;


@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "product")
public class Product implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "product_id")
    private int id;

    @Column(name = "product_code")
    private String code;

    @Column(name = "product_name")
    private String name;

    @Column(name = "product_image")
    private String image;

    @Column(name = "product_price")
    private Double price;

    @Column(name = "product_description")
    private String description;

    @Column(name = "product_active")
    private int active;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "category_id")
    private Category category;

    @OneToMany(mappedBy = "product",fetch = FetchType.EAGER)
    private Set<OrderDetail> orderDetails;
}

