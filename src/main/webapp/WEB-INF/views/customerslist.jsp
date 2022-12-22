<%-- 
    Document   : customer
    Created on : Jun 14, 2022, 3:52:22 PM
    Author     : George.Pasparakis
--%>

<%@page import="java.util.HashSet"%>
<%@page import="models.Customer"%>
<%@page import="java.util.Set"%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" charset="UTF-8">
        <title>Customers' Details</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <style>
        body > div > div.row.border-top.border-bottom.border-secondary.mb-2 {
            background-color: lightblue;
            height: 20%;
            line-height: 2.74em;
        }
        body > div > div.row:nth-child(odd) {
            background-color: lightgrey;
            height: 40%;
            line-height: 0.74em;
        }
        body > div > div.row:nth-child(even) {
            background-color: lightslategrey;
            height: 40%;
            line-height: 0.74em;
        }
    </style>
    <body>
        <div class='container-fluid'>
            <a class='btn btn-primary mt-2' href='<%= request.getContextPath() + "/NewCustomer" %>'>Create a new Customer</a>
            <h1>Customers' Data</h1>
            <div class='row border-top border-bottom border-secondary mb-2'>
                <div class='col fs-4 fw-bold'>Id</div>
                <div class='col fs-4 fw-bold'>First Name</div>
                <div class='col fs-4 fw-bold'>Last Name</div>
                <div class='col fs-4 fw-bold'>Email</div>
                <div class='col fs-4 fw-bold'>Actions</div>
            </div>
            <c:forEach items='${customers}' var="customer">
                <div class='row border-bottom border-primary'>
                        <div class='col pt-3'>${customer.getId()}</div>
                        <div class='col pt-3'>${customer.getFirstName()}</div>
                        <div class='col pt-3'>${customer.getLastName()}</div>
                        <div class='col pt-3 pb-2'>${customer.getEmail()}</div>
                        <div class='col pt-1 pb-2'>
                            <a href='DeleteCustomer?id=${customer.getId()}' class='btn btn-danger'>Delete</a>&nbsp;&nbsp;&nbsp;<a href='#' class='btn btn-info'>Update</a>
                        </div>
                </div>
            </c:forEach>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>
