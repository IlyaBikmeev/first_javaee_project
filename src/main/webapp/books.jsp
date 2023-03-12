<%--
  Created by IntelliJ IDEA.
  User: Илья
  Date: 12.03.2023
  Time: 18:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>

    <style>
        tr, td {
            border: 1px solid black;
            padding: 2rem;
            background: darkmagenta;
            color: whitesmoke;
        }
    </style>
</head>
<body>
    <h1>BOOKS</h1>
    <table>
        <tr>
            <th>Title</th>
            <th>Author</th>
            <th>Price</th>
            <th>Amount</th>
        </tr>

        <c:forEach items="${requestScope.get('books')}" var="curBook">
            <tr>
                <td><c:out value="${curBook.title}"/></td>
                <td><c:out value="${curBook.author}"/></td>
                <td><c:out value="${curBook.price}"/></td>
                <td><c:out value="${curBook.amount}"/></td>
            </tr>
        </c:forEach>
    </table>

    <form method="post" action="/book">
        <div>Title: <input type="text" name="title" id="title" value=""></div>
        <div>Author: <input type="text" name="author" id="author"></div>
        <div>Price: <input type="text" name="price" id="price"></div>
        <div>Amount: <input type="text" name="amount" id="amount"></div>
        <div>
            <input type="submit" value="Add book">
        </div>
    </form>

</body>
</html>
