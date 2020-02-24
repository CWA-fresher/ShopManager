package com.cwa.shop.model;

import lombok.*;

import javax.persistence.*;
import java.util.Set;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "category")
public class Category {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "category_id")
    private int id;

    @Column(name = "category_code")
    private String code;

    @Column(name = "category_name")
    private String name;

    @Column(name = "category_active")
    private int active;

    @OneToMany(mappedBy = "category",fetch = FetchType.EAGER)
    private Set<Product> products;
}