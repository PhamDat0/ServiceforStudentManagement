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
            h3{
                text-align: center;
            }
            .align-items-center{
                -ms-flex-align: center!important;
                align-items: center!important;
            }
            .d-flex{
                display: -ms-flexbox!important;
                display: flex!important;
            }
        </style>
    </head>
    <body>
        <jsp:include page="../header.jsp"/>

        <!--displaying content-->
        <div class="container" style="padding: 10px">
            <div class="row d-flex align-items-center">
                <!--account info-->
                <div class="col-sm-6">
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
                <!--personal info-->
                <div class="col-sm-6">
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
        </div>

        <!--modal-->
        <div class="modal fade" id="pwdModal" role="dialog">
            <div class="modal-dialog">
                <!--content-->
                <div class="modal-content">
                    <!--header-->
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title text-center">Change Password</h4>
                    </div>
                    <!--body-->
                    <div class="modal-body">
                        <form action="">
                            <div class="form-group">
                                <label for="oldPwd">Old Password:</label>
                                <input type="password" class="form-control" id="oldPwd" placeholder="Enter old Password" name="txtOldPwd">
                            </div>
                            <div class="form-group">
                                <label for="newPwd">New Password:</label>
                                <input type="password" class="form-control" id="newPwd" placeholder="Enter new password" name="txtNewPwd">
                            </div>
                            <div class="form-group">
                                <label for="reNewPwd">New Password:</label>
                                <input type="password" class="form-control" id="reNewPwd" placeholder="Re-enter new password" name="txtReNewPwd">
                            </div>
                            <div style="text-align:center">
                                <button type="submit" class="btn btn-success">Submit</button>
                                <button type="reset" class="btn btn-warning">Clear</button>
                                <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
