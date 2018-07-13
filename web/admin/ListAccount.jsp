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
        <div class="right-bar text-center">
            <h4>Filter</h4>
            <form>
                <input type="submit" class="btn btn-warning btn-block" value="All"/>
                <input type="submit" class="btn btn-warning btn-block" value="Student"/>
                <input type="submit" class="btn btn-warning btn-block" value="Provider"/>
                <input type="submit" class="btn btn-warning btn-block" value="Administrator"/>
            </form>
            <br/>
            <h4>Create</h4>
            <form action="NewAccount.jsp">
                <input type="submit" class="btn btn-warning btn-block" value="New Provider"/>
                <input type="submit" class="btn btn-warning btn-block" value="New Admin"/>
            </form>
        </div>

        <table>
            <thead>
                <tr>
                    <th>Number</th>
                    <th>Account ID</th>
                    <th>Username</th>
                    <th>Full Name</th>
                    <th>Type</th> 
                    <th style="text-align: center">Action</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>AC1</td>
                    <td>phongtt</td>
                    <td>Tran Tuan Phong</td>
                    <td>Administrator</td>
                    <td style="text-align: center">
                        <input type="submit" class="btn btn-success" value="View"></input>
                        <input type="submit" class="btn btn-warning" value="Ban"></input>
                        <input type="submit" class="btn btn-danger" value="Delete"></input>
                    </td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>AC2</td>
                    <td>phongtt</td>
                    <td>Tran Tuan Phong</td>
                    <td>Administrator</td>
                    <td style="text-align: center">
                        <input type="submit" class="btn btn-success" value="View"></input>
                        <input type="submit" class="btn btn-warning" value="Ban"></input>
                        <input type="submit" class="btn btn-danger" value="Delete"></input>
                    </td>
                </tr>
            </tbody>
        </table>
    </body>
    <jsp:include page="../footer.jsp"/>
</html>
