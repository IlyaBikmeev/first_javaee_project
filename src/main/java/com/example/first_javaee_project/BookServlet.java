package com.example.first_javaee_project;

import com.example.first_javaee_project.dao.BookDao;
import com.example.first_javaee_project.model.Book;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "bookServlet", value = "/book")
public class BookServlet extends HttpServlet {

    private final BookDao dao = new BookDao();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("books", dao.getAll());

        getServletContext().getRequestDispatcher("/books.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String title = req.getParameter("title");
        String author = req.getParameter("author");
        double price = Double.parseDouble(req.getParameter("price"));
        int amount = Integer.parseInt(req.getParameter("amount"));
        Book book = Book.builder()
                .title(title)
                .author(author)
                .price(price)
                .amount(amount)
                .build();
        dao.addBook(book);
    }
}
