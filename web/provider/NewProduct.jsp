<%-- 
    Document   : New Product
    Created on : Jul 12, 2018, 2:42:36 PM
    Author     : Phong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Service Manager</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <jsp:include page="../header.jsp"/>
        <div class="container-fluid row">

            <jsp:include page="../functionBar.jsp"/>

            <div class="col-sm-7">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 style="text-align: center">ADD NEW PRODUCT</h3>
                    </div>
                    <div class="panel-body">
                        <form>
                            <div class="form-group">
                                <label for="service">Service:</label>
                                <select class="form-control" id="service">
                                    <option>Student</option>
                                    <option>Provider</option>
                                    <option>Administrator</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="productName">Product name:</label>
                                <input type="text" class="form-control" id="productName" placeholder="Enter product name" name="productName">
                            </div>
                            <div class="form-group">
                                <label for="price">Price:</label>
                                <input type="text" class="form-control" id="price" placeholder="Enter price" name="price">
                            </div>
                            <div class="form-group">
                                <label for="duration">Duration (days):</label>
                                <input type="text" class="form-control" id="duration" placeholder="Enter duration" name="duration">
                            </div>
                            <div style="text-align: center">
                                <button type="submit" class="btn btn-success">Add</button>
                                <button type="reset" class="btn btn-warning">Clear</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            <jsp:include page="../informationBar.jsp"/>
        </div>
    </body>
</html>
