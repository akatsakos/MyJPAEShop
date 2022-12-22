<%-- 
    Document   : customer
    Created on : Jun 14, 2022, 3:52:22 PM
    Author     : George.Pasparakis
--%>

<%@page import="models.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Details</title>
    </head>
    <body>
        <h1>Customer Data</h1>
        <%
            Customer customer = (Customer)request.getAttribute("customer");
        %>
        <%= customer %>
    </body>
</html>
