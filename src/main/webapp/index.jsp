<%@ page import="java.util.Date" %>
<%@ page import="java.util.Random" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>

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

<h1><%="Hello World!" %> </h1>

<h1>Time now:</h1>
<div>
    <%= new Date() %>
</div>

<%
    Random random = new Random();
%>

<table>
    <c:forEach begin="1" end="10" step="1">
        <tr>
            <c:forEach begin="1" end="10" step="1">
                <td>
                    <%= new Random().nextInt(100) + 1 %>
                </td>
            </c:forEach>
        </tr>
    </c:forEach>
</table>



<a href="hello-servlet">Hello Servlet</a>
<a href="book">Show books</a>
</body>
</html>