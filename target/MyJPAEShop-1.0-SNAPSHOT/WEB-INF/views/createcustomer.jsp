<%-- 
    Document   : createcustomer
    Created on : Jun 15, 2022, 1:33:22 PM
    Author     : George.Pasparakis
--%>

<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Customer</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <body>
        <h3>Type new customer's details</h1>
        <div class='container'>
            <form class='form' action="NewCustomer" method="POST">
                <div class='mb-8'>
                    <label for='firstName' class="form-label">First Name</label>
                    <input type='text' class='form-control' id='firstName' name='firstName'>
                </div>
                <div class='mb-4'></div>
                <div class='mb-8'>
                    <label for='lastName' class="form-label">Last Name</label>
                    <input type='text' class='form-control' id='lastName' name='lastName'>
                </div>
                <div class='mb-4'></div>
                <div class='mb-8'>
                    <label for='email' class="form-label">Email</label>
                    <input type='text' class='form-control' id='email' name='email'>
                </div>
                <div class='mb-4'></div>
                <button class="btn btn-primary">Save</button>
            </form>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
