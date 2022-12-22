<%-- 
    Document   : customersorders
    Created on : Jun 17, 2022, 2:02:41 PM
    Author     : George.Pasparakis
--%>

<%@page import="models.Customer"%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customers' Orders</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <body>
        <h1>Customers' Orders</h1>
        <div class='container-fluid'>
            <a class='btn btn-primary mt-2' href='<%= request.getContextPath() + "/CustomersOrders" %>'>Create a new Order</a>
            <h1>Customers' Data</h1>
            <div class='row border-top border-bottom border-secondary mb-2'>
                <div class='col fs-4 fw-bold'>Id</div>
                <div class='col fs-4 fw-bold'>First Name</div>
                <div class='col fs-4 fw-bold'>Last Name</div>
                <div class='col fs-4 fw-bold'>Email</div>
                <div class='col fs-4 fw-bold'>Orders</div>
            </div>
            <c:forEach items='${customersOrders}' var="customerOrders">
                <div class='row border-bottom border-primary'>
                        <div class='col pt-3'>${customerOrders.getCustomer().getId()}</div>
                        <div class='col pt-3'>${customerOrders.getCustomer().getFirstName()}</div>
                        <div class='col pt-3'>${customerOrders.getCustomer().getLastName()}</div>
                        <div class='col pt-3 pb-2'>${customerOrders.getCustomer().getEmail()}</div>
                        <div class='col pt-1 pb-2'>
                            <c:forEach items='${customerOrders.getOrderedProducts()}' var='product'>
                                <div class='row border-bottom border-primary'>
                                    <div class='col pt-3'>${product.getId()}&nbsp;${product.getName()}</div>
                                </div>
                            </c:forEach>
                        </div>
                </div>
            </c:forEach>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>
