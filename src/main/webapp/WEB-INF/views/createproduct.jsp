<%-- 
    Document   : createproduct
    Created on : Jun 15, 2022, 1:33:22 PM
    Author     : George.Pasparakis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Product</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <body>
        <h3>Type new product's details</h1>
        <div class='container'>
            <form class='form' action="NewProduct" method="POST">
                <div class='mb-8'>
                    <label for='Name' class="form-label">Name</label>
                    <input type='text' class='form-control' id='Name' name='name'>
                </div>
                <div class='mb-4'></div>
                <div class='mb-8'>
                    <label for='description' class="form-label">Description</label>
                    <input type='text' class='form-control' id='description' name='description'>
                </div>
                <div class='mb-4'></div>
                <div class='mb-8'>
                    <label for='price' class="form-label">Price</label>
                    <input type='number' class='form-control' id='price' name='price' min="0">
                </div>
                <div class='mb-4'></div>
                <button class="btn btn-primary">Save</button>
            </form>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
