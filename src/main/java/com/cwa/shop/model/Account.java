package com.cwa.shop.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Set;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "account")
public class Account {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "account_id")
    private int id;

    @Column(name = "account_fullname")
    private String fullname;

    @Column(name = "account_email")
    private String email;

    @Column(name = "account_password")
    private String password;

    @Column(name = "account_address")
    private String address;

    @Column(name = "account_role")
    private String role;

    @Column(name = "account_active")
    private int active;

    @OneToMany(mappedBy = "account",fetch = FetchType.EAGER)
    private Set<Order> orders;
}

