<%-- 
    Document   : createorder
    Created on : Jun 17, 2022, 12:02:32 PM
    Author     : George.Pasparakis
--%>

<%@page import="models.Customer"%>
<%@page import="models.Product"%>
<%@page import="java.util.Set"%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Order</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <body>
        <h1>Create Order</h1>
        <div class='container'>
            <form class='form' action="Orders" method="POST">
                <div class='mb-8'>
                    <label for='customer' class="form-label">Select a Customer...</label>
                    <select id="customer" name="customer">
                        <c:forEach var="customer" items="${customers}">
                            <option value="${customer.getId()}">${customer.getFirstName()}&nbsp;${customer.getLastName()}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class='mb-4'></div>
                <div class='mb-8'>
                    <label for='product' class="form-label">Select a Product...</label>
                    <select id="product" name="product">
                        <c:forEach var="product" items="${products}">
                            <option value="${product.getId()}">${product.getName()}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class='mb-4'></div>
                <button class="btn btn-primary">Save</button>
            </form>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>
