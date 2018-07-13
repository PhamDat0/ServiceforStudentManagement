<%-- 
    Document   : AllAccount
    Created on : Jul 11, 2018, 9:36:57 AM
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
        <link href='https://fonts.googleapis.com/css?family=Open Sans' rel='stylesheet' type='text/css'>
        <link href="https://netdna.bootstrapcdn.com/font-awesome/3.0.2/css/font-awesome.css" rel="stylesheet">
    </head>
    <body>
        <jsp:include page="../header.jsp"/>
        <div class="container">
            <div class="row">
                <div class="navbar col-sm-6 navbar-right text-center" style="padding-top: 7px;margin-right: 5px; background-color: #337ab7; color: white">
                    <form class="form-inline">
                        <div class="form-group">
                            <label for="type">Filter</label>
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
    </body>
</html>
