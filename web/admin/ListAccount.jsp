<%-- 
    Document   : AllAccount
    Created on : Jul 11, 2018, 9:36:57 AM
    Author     : Phong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <jsp:useBean id="listAccount" class="bean.ListAccountBean" scope="page"/>
        <jsp:setProperty property="*" name="listAccount"/>

        <jsp:include page="/header.jsp"/>

        <div class="container-fluid row">

            <jsp:include page="/functionBar.jsp"/>

            <div class="col-sm-10">

                <!--Filter-->
                <div class="row">
                    <div class="navbar col-sm-6 navbar-right text-center" style="padding-top: 7px;margin-right: 5px; background-color: #337ab7; color: white">
                        <form class="form-inline">
                            <div class="form-group">
                                <label for="type">Filter: </label>
                                <select class="form-control" id="type" name="type">
                                    <option value="0" ${param.type == '0' ? "selected" : ""}>All</option>
                                    <option value="1" ${param.type == '1' ? "selected" : ""}>Student</option>
                                    <option value="2" ${param.type == '2' ? "selected" : ""}>Provider</option>
                                    <option value="3" ${param.type == '3' ? "selected" : ""}>Admin</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <select class="form-control" id="status" name="status">
                                    <option value="All" ${param.status == 'All' ? "selected" : ""}>All</option>
                                    <option value="Actived" ${param.status == 'Actived' ? "selected" : ""}>Actived</option>
                                    <option value="Banned" ${param.status == 'Banned' ? "selected" : ""}>Banned</option>
                                </select>
                            </div>
                            <div class="input-group" class="text-center">
                                <input type="text" class="form-control" placeholder="Enter name" id="filterName" name="filterName">
                                <div class="input-group-btn">
                                    <button class="btn btn-default" type="submit">
                                        <i class="glyphicon glyphicon-search"></i>
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>

                <!--Table-->
                <div class="row">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 style="text-align: center">ACCOUNT LIST</h3>
                        </div>
                        <div class="panel-body">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Username</th>
                                        <th>Full Name</th>
                                        <th>Type</th> 
                                        <th style="text-align: center">Action</th>
                                    </tr>
                                </thead>
                                <tbody id="myTable"> 
                                    <c:forEach var="acc" items="${listAccount.account}">
                                        <tr>
                                            <td>${acc.accountID}</td>
                                            <td>${acc.accountName}</td>
                                            <td>${acc.userName}</td>
                                            <c:if test="${acc.type == '3'}">
                                                <td>Administrator</td>
                                            </c:if>
                                            <c:if test="${acc.type != '3'}">
                                                <td>${acc.type == '1' ? "Student" : "Provider"}</td>
                                            </c:if>
                                            <td style="text-align: center">
                                                <input type="submit" class="btn btn-default" value="View"></input>
                                                <input type="submit" class="btn btn-default" value="Reset"></input>
                                                <input type="submit" class="btn btn-default" value="Ban"></input>
                                                <input type="submit" class="btn btn-default" value="Delete"></input>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--view more password-->
        <div class="modal fade in" id="pwdModal" role="dialog">
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
                        <form action="/ServiceforStudentManagement/AccountController" method="POST">
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
                            <input type="hidden" name="link" value="${pageContext.request.requestURL}"/>
                            <input type="hidden" name="action" value="changePassword"/>
                        </form>
                    </div>
                </div>
            </div>
        </div>
                            
        <script>
            $(document).ready(function () {
                $("#filterName").on("keyup", function () {
                    var value = $(this).val().toLowerCase();
                    $("#myTable tr").filter(function () {
                        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                    });
                });
            });
        </script>
    </body>
</html>
