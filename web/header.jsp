<%-- 
    Document   : header
    Created on : Jun 29, 2018, 8:13:06 AM
    Author     : Tu Khac Hieu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="/ServiceforStudentManagement/Home.jsp">Service for Student Management</a>
                </div>
                <ul class="nav navbar-nav">
                    <li class="active"><a href="/ServiceforStudentManagement/Home.jsp">Home</a></li>
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Contact Us</a></li>
                    <li><a href="#">Notification<span class="badge">5</span></a></li>
                    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown">Account<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="/ServiceforStudentManagement/user/MyProfile.jsp">My Profile</a></li>
                            <li><a href="/ServiceforStudentManagement/user/Transaction.jsp">Transaction</a></li>
                            <li><a href="#">Feedback</a></li>
                        </ul>
                    </li>
                    <li><a href="/ServiceforStudentManagement/user/Service.jsp">Service</a></li>
                    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown">Admin<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="/ServiceforStudentManagement/admin/ListAccount.jsp">Account</a></li>
                            <li><a href="/ServiceforStudentManagement/admin/ListService.jsp">Service</a></li>
                            <li><a href="/ServiceforStudentManagement/admin/ListFeedBack.jsp">Feedback</a></li>
                            <li><a href="/ServiceforStudentManagement/admin/ListTransaction.jsp">Transaction</a></li>
                        </ul>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#signupModal" data-toggle="modal"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                    <li><a href="#loginModal" data-toggle="modal"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                </ul>
            </div>
        </nav>

        <!-- Login Modal -->
        <div id="loginModal" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-body">
                        <form action="">
                            <div class="form-group">
                                <label for="username">Username</label>
                                <input type="text" class="form-control" id="username" placeholder="Enter username" name="username">
                            </div>
                            <div class="form-group">
                                <label for="pwd">Password:</label>
                                <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">
                            </div>
                            <div style="text-align:center">
                                <button type="submit" class="btn btn-success">Login</button>
                                <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#forgotModal" data-dismiss="modal">Forgot Password</button>
                                <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <!-- Sign up Modal -->
        <div id="signupModal" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-body">
                        <form action="">
                            <div class="form-group">
                                <label for="username">Username</label>
                                <input type="text" class="form-control" id="username" placeholder="Enter username" name="username">
                            </div>
                            <div class="form-group">
                                <label for="pwd">Password:</label>
                                <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">
                            </div>
                            <div class="form-group">
                                <label for="repwd">Re-password:</label>
                                <input type="password" class="form-control" id="repwd" placeholder="Re-enter password" name="repwd">
                            </div>
                            <div class="form-group">
                                <label for="roleNumber">Role Number:</label>
                                <input type="text" class="form-control" id="roleNumber" placeholder="Enter role number" name="roleNumber">
                            </div>
                            <div class="form-group">
                                <label for="phone">Phone:</label>
                                <input type="text" class="form-control" id="phone" placeholder="Enter phone" name="phone">
                            </div>
                            <div class="form-group">
                                <label>Gender:</label>
                                <label class="radio-inline">
                                    <input type="radio" name="optradio">Male
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" name="optradio">Female
                                </label>
                            </div>

                            <div class="form-group">
                                <label for="date">Date:</label>
                                <input type="date" class="form-control" id="date" placeholder="Enter date" name="date">
                            </div>
                            <div style="text-align:center">
                                <button type="submit" class="btn btn-success">Register</button>
                                <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#forgotModal" data-dismiss="modal">Forgot Password</button>
                                <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- Forgot Modal -->
        <div id="forgotModal" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-body">
                        <form action="">
                            <div class="form-group">
                                <label for="email">Email</label>
                                <input type="email" class="form-control" id="username" placeholder="Enter username" name="username">
                            </div>
                            <div class="form-group">
                                <label for="pwd">Password:</label>
                                <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">
                            </div>
                            <div class="form-group">
                                <label for="repwd">Re-password:</label>
                                <input type="password" class="form-control" id="repwd" placeholder="Re-enter password" name="repwd">
                            </div>
                            <div style="text-align:center">
                                <button type="submit" class="btn btn-success">Reset Password</button>
                                <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
