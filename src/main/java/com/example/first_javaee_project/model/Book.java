package com.example.first_javaee_project.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

@Data
@Builder
@AllArgsConstructor
public class Book {
    private String title;
    private String author;
    private double price;
    private int amount;
}
