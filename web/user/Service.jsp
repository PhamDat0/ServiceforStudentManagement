<%-- 
    Document   : MyService
    Created on : Jul 11, 2018, 8:29:47 AM
    Author     : Tu Khac Hieu
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
                <div class="navbar col-sm-5 navbar-right text-center" style="padding-top: 7px;margin-right: 5px; background-color: #337ab7; color: white">
                    <form class="form-inline">
                        <div class="form-group">
                            <label for="type">Filter: </label>
                            <select class="form-control" id="type">
                                <option>My Service</option>
                                <option>Available List</option>
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
                    <!--heading-->
                    <div class="panel-heading">
                        <h3 style="text-align: center">My Service</h3>
                    </div>
                    <!--body-->
                    <div class="panel-body">
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>STT</th>
                                    <th>Name Service</th>
                                    <th>Date Register</th>
                                    <th>Expiry Date</th>
                                    <th style="text-align: center">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>FU Hoa Lac Order Foods </td>
                                    <td>21/07/2018</td>
                                    <td>21/10/2018</td>
                                    <td style="text-align: center">
                                        <input type="submit" class="btn btn-default" value="View"></input>
                                        <input type="submit" class="btn btn-default" value="Feedback"></input>
                                        <input type="submit" class="btn btn-default" value="Rating"></input>
                                        <input type="submit" class="btn btn-default" value="Stop Using"></input>
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
