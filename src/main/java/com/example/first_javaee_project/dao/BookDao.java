package com.example.first_javaee_project.dao;

import com.example.first_javaee_project.model.Book;

import java.util.ArrayList;
import java.util.List;

public class BookDao {
    private List<Book> books = new ArrayList<>(List.of(
            new Book("Мастер и Маргарита", "Булгаков М.А.", 670.99, 3),
            new Book("Белая гвардия", "Булгаков М.А.", 540.50, 5)
    ));

    public List<Book> getAll() {
        return books;
    }

    public void addBook(Book book) {
        books.add(book);
    }
}
