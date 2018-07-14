<%-- 
    Document   : ViewProfile
    Created on : Jul 9, 2018, 2:58:35 PM
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
        <style>
            .customTable{
                border-collapse: separate;
                border-spacing: 10px;
            }
            h3, h4{
                text-align: center;
            }
        </style>
    </head>
    <body>
        <jsp:include page="../header.jsp"/>

        <div class="container-fluid row">
            
            <jsp:include page="../functionBar.jsp"/>
            
            <div class="col-sm-7">
                <!--account-->
                <div class="row">
                    <!--account info-->
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3>Account Information</h3>
                        </div>
                        <div class="panel-body">
                            <table align="center" class="customTable">
                                <tr>
                                    <td align="right">Balance:</td>
                                    <td>10000</td>
                                    <td><a href="Transaction.jsp"><span class="glyphicon glyphicon-circle-arrow-right"></span></a></td>
                                </tr>
                                <tr>
                                    <td align="right">Role Number:</td>
                                    <td>SE05711</td>
                                </tr>
                                <tr>
                                    <td align="right">Wallet ID:</td>
                                    <td>101011235</td>
                                </tr>
                                <tr>
                                    <td align="right">Created Date:</td>
                                    <td>SE05711</td>
                                </tr>
                                <tr>
                                    <td align="right">Account Name:</td>
                                    <td>Administrator</td>
                                </tr>
                                <tr>
                                    <td align="right">Password:</td>
                                    <td>***********</td>
                                    <td><a href="#pwdModal" data-toggle="modal"><span class="glyphicon glyphicon-pencil" id="pwd"></span></a></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>

                <!--personal-->
                <div class="row">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3>Personal Information</h3>
                        </div>
                        <div class="panel-body">
                            <table align="center" class="customTable">
                                <tr>
                                    <td align="right">Full Name:</td>
                                    <td><input type="text" value="PhongTT"/></td>
                                </tr>
                                <tr>
                                    <td align="right">Email:</td>
                                    <td><input type="text" value="phongttse05711@fpt.edu.vn"/></td>
                                </tr>
                                <tr>
                                    <td align="right">Date of Birth:</td>
                                    <td><input type="date" value="1998-10-05"/></td>
                                </tr>
                                <tr>
                                    <td align="right">Address:</td>
                                    <td><input type="text" value="C412"/></td>
                                </tr>
                                <tr>
                                    <td align="right">Phone:</td>
                                    <td><input type="text" value="0123456789"/></td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center">
                                        <button type="button" class="btn-primary">Save</button>
                                        <button type="button" class="btn-warning">Cancel</button>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            
            <jsp:include page="../informationBar.jsp"/>
        </div>
 
    </body>
</html>
