<%-- 
    Document   : header
    Created on : Jun 29, 2018, 8:13:06 AM
    Author     : Tu Khac Hieu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Service Manager</title>
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet">
        <link href="bootstrap/css/bootstrap-theme.css" rel="stylesheet">
        <link href="css/webstyle.css" rel="stylesheet">
    </head>
    <body>
        
        <div class="container-fluid">
            <header class="container">
                <nav class="navbar navbar-default">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="#">
                            <img src="image/abc_1.jpg" alt="">
                        </a>
                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="#">Home</a></li>

                            <li><a href="#">About Us</a></li>
                            <li><a href="#">Notifications</a></li>
                            <li><a href="#">Contact Us</a></li>
                            <li role="separator" class="divider"></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">Account <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li>View Profile</li>
                                    <li>Payment</li>
                                    <li>Feedback Admin</li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Service <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li>My Service</li>
                                    <li>Available Service</li>
                                </ul>
                            </li>
                            <button type="button" class="btn btn-default navbar-btn">Log in</button>
                            <button type="button" class="btn btn-default navbar-btn">Register</button>
                        </ul>
                    </div><!-- /.navbar-collapse -->
                </nav>
                
            </header>

        </div>

    </body>
</html>
