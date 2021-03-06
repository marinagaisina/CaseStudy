package com.marinagaisina.casestudy.database.entities;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Getter
@Setter
@Entity
@Table(name = "locations")
public class Location {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "address")
    private String address;

    // contact email for the location
    @Column(name ="email")
    private String email;

    // contact number for the location
    @Column(name = "phone")
    private String phone;

    @Column(name = "type")
    private String type;

}
