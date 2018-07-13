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
        <link rel="stylesheet" href="../src/css/MyserviceTable.css">
    </head>
    <body>
        <jsp:include page="../header.jsp"/>
        <div class="container">
            <div class="row">
                <div class="navbar navbar-default text-center" style="padding-top: 7px;">
                    <form>
                        <input type="submit" class="btn btn-warning" value="All"/>
                        <input type="submit" class="btn btn-warning" value="Feedback"/>
                        <input type="submit" class="btn btn-warning" value="Report"/>
                    </form>
                </div>
            </div>
            <div class="row">
                <table>
                    <thead>
                        <tr>
                            <th>Number</th>
                            <th>Report ID</th>
                            <th>Account ID</th>
                            <th>Detail</th>                 
                            <th style="text-align: center">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>R1</td>
                            <td>AC1</td>
                            <td>Thai do phuc vu cua nhan vien qua te</td>
                            <td style="text-align: center">
                                <input type="submit" class="btn btn-success" value="Send"></input>
                                <input type="submit" class="btn btn-danger" value="Delete"></input>
                            </td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>R2</td>
                            <td>AC2</td>
                            <td>Gia ca qua cao</td>
                            <td style="text-align: center">
                                <input type="submit" class="btn btn-success" value="Send"></input>
                                <input type="submit" class="btn btn-danger" value="Delete"></input>
                            </td>
                        </tr>               
                    </tbody>
                </table>
            </div>
        </div>
    </body>
    <jsp:include page="../footer.jsp"/>
</html>
