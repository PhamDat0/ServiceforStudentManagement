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
        <link rel="stylesheet" href="../src/css/MyserviceTable.css">
        <style>
            a {
                color: orange;
            }
        </style>
    </head>
    <body>
        <jsp:include page="../header.jsp"/>
        <div class="panel panel-primary">
            <!--heading-->
            <div class="panel-heading">
                <ul class="nav nav-tabs" role="tablist">
                    <li class="navbar-brand">Service</li>
                    <li role="presentation" class="active">
                        <a href="#Myservice" role="tab" aria-controls="MyService" data-toggle="tab">My Service</a>
                    </li>
                    <li role="presentation">
                        <a href="#Available" role="tab" aria-controls="AvailableService" data-toggle="tab">Available Service</a>
                    </li>
                </ul>
            </div>

            <!--body-->
            <div class="panel-body">
                <div class="tab-content">
                    <!--My Service-->
                    <div role="tabpanel" class="tab-pane active" id="Myservice">
                        <form action="">
                            <table>
                                <thead>
                                    <tr>
                                        <th colspan="5">MY SERVICES</th>
                                    </tr>
                                    <tr>

                                        <td colspan="1">STT</td>
                                        <td colspan="1">Name Service</td>
                                        <td colspan="1">Date Register</td>
                                        <td colspan="1">Expiry Date</td>
                                        <td colspan="1">Action</td>
                                    </tr>

                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>FU Hoa Lac Order Foods </td>
                                        <td>21/07/2018</td>
                                        <td>21/10/2018</td>


                                        <td>
                                            <i class="material-icons button edit">Stop Using</i>
                                            <i class="material-icons button delete">Rate Service</i>
                                            <i class="material-icons button edit">Feedback</i>
                                        </td>
                                    </tr>

                                </tbody>
                            </table>
                        </form>
                    </div>
                    <!--Available-->
                    <div role="tabpanel" class="tab-pane" id="Available">
                        <form action="">
                            <div class="form-group">
                                <label for="receiver">Receiver:</label>
                                <input type="text" class="form-control" id="receiver" placeholder="Enter receiver name" name="receiver">
                            </div>
                            <div class="form-group">
                                <label for="amount">Amount:</label>
                                <input type="text" class="form-control" id="amount" placeholder="Enter amount" name="amount">
                            </div>
                            <div class="form-group">
                                <label for="content">Content:</label>
                                <input type="text" class="form-control" id="content" placeholder="Enter content" name="content">
                            </div>
                            <div class="form-group">
                                <label for="pwd">Password:</label>
                                <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">
                            </div>
                            <div class="form-group">
                                <label for="rePwd">Re-password:</label>
                                <input type="password" class="form-control" id="rePwd" placeholder="Re-enter password" name="rePwd">
                            </div>
                            <div style="text-align: center">
                                <button type="submit" class="btn-success">Send</button>
                                <button type="reset" class="btn-warning">Clear</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <jsp:include page="../footer.jsp"/>
</html>
