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
        <jsp:include page="/header.jsp"/>
        <div class="container-fluid row">

            <jsp:include page="/functionBar.jsp"/>

            <div class="col-sm-10">
                <!--Filter-->
                <div class="row">

                    <div class="navbar col-sm-8 navbar-right text-center" style="padding-top: 7px;margin-right: 5px; background-color: #337ab7; color: white">
                        <form class="form-inline">
                            <div class="form-group">
                                <label for="service">Service: </label>
                                <select class="form-control" id="service">
                                    <option>All</option>
                                    <option>Actived</option>
                                    <option>Banned</option>
                                    <option>Register</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="type">Filter: </label>
                                <select class="form-control" id="type">
                                    <option>All</option>
                                    <option>Actived</option>
                                    <option>Banned</option>
                                    <option>Register</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <select class="form-control" id="type">
                                    <option>All</option>
                                    <option>Service</option>
                                    <option>Provider</option>
                                </select>
                            </div>
                            <div class="input-group" class="text-center">
                                <input type="text" class="form-control" placeholder="Enter name">
                                <div class="input-group-btn">
                                    <button class="btn btn-default" type="submit">
                                        <i class="glyphicon glyphicon-search"></i>
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>

                <!--Table data-->
                <div class="row">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 h3 style="text-align: center">SERVICE LIST</h3>
                        </div>
                        <div class="panel-body">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>Number</th>
                                        <th>Service Name</th>
                                        <th>Provider Name</th>
                                        <th>Fee</th> 
                                        <th>Status</th> 
                                        <th style="text-align: center">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>Dump the trash</td>
                                        <td>Hi hi</td>
                                        <td>10000</td>
                                        <td>Actived</td>
                                        <td style="text-align: center">
                                            <input type="submit" class="btn btn-success" value="View"></input>
                                            <input type="submit" class="btn btn-warning" value="Ban"></input>
                                            <input type="submit" class="btn btn-danger" value="Delete"></input>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Library Management</td>
                                        <td>Ha ha</td>
                                        <td>100000</td>
                                        <td>Banned</td>
                                        <td style="text-align: center">
                                            <input type="submit" class="btn btn-success" value="View"></input>
                                            <input type="submit" class="btn btn-warning" value="Active"></input>
                                            <input type="submit" class="btn btn-danger" value="Delete"></input>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <div id="newProductModal" class="modal fade in" role="dialog">
            <div class="modal-dialog">
                <div class="modal-header">
                    <h3 style="text-align: center">ADD NEW PRODUCT</h3>
                </div>
                <div class="modal-content">
                    <div class="modal-body">
                        <div class="panel panel-primary">
                            <form action="/ServiceforStudentManagement/ProviderController" method="POST">
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
                                <input type="hidden" name="link" value="${pageContext.request.requestURL}"/>
                                <input type="hidden" name="action" value="newProvider"/>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
