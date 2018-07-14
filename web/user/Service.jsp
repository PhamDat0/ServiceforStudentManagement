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
    </head>
    <body>
        <jsp:include page="../header.jsp"/>

        <div class="container-fluid row">

            <jsp:include page="../functionBar.jsp"/>

            <div class="col-sm-10">
                <div class="panel panel-primary row">
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
