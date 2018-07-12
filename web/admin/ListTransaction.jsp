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
                <input type="submit" class="btn btn-warning btn-block" value="Top-up"/>
                <input type="submit" class="btn btn-warning btn-block" value="Payment"/>
            </form>
        </div>

        <table>
            <thead>
                <tr>
                    <th>Number</th>
                    <th>Order ID</th>
                    <th>Service ID</th>
                    <th>Provider ID</th>  
                    <th>User ID</th>  
                    <th>Price</th>  
                    <th>Status</th>                   
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>O1</td>
                    <td>S1</td>
                    <td>PV1</td>
                    <td>U1</td>
                    <td>50000</td>
                    <td>Finished</td>                                   
                </tr>
                <tr>
                    <tr>
                    <td>2</td>
                    <td>O2</td>
                    <td>S2</td>
                    <td>PV2</td>
                    <td>U2</td>
                    <td>500000</td>
                    <td>In Use</td>                                   
                </tr>
                 <tr>
                    <tr>
                    <td>3</td>
                    <td>O3</td>
                    <td>S3</td>
                    <td>PV3</td>
                    <td>U3</td>
                    <td>5000000</td>
                    <td>Waiting</td>                                   
                </tr>           
            </tbody>
        </table>
    </body>
</html>
