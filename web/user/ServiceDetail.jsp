<%-- 
    Document   : ServiceDetail
    Created on : Jul 12, 2018, 2:49:46 PM
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
            img {
                width: 100%;
                height: 300px!important;
            }
        </style>
    </head>
    <body>
        <jsp:include page="/header.jsp"/>

        <div class="container-fluid row">

            <jsp:include page="/functionBar.jsp"/>

            <div class="col-sm-10">
                <!--introduction-->
                <div class="row">
                    <!--text-->
                    <div class="col-sm-7">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3>Service Name - Provider name - Rating</h3>
                            </div>
                            <!--product list-->
                            <div class="panel-body">

                            </div>
                        </div>
                    </div>

                    <!--image-->
                    <div class="col-sm-5">
                        <div id="img-carousel" data-ride="carousel" class="carousel slide">
                            <!-- Indicators-->
                            <ol class="carousel-indicators">
                                <li data-target="#img-carousel" data-slide-to="0" class="active"></li>
                                <li data-target="#img-carousel" data-slide-to="1"></li>
                                <li data-target="#img-carousel" data-slide-to="2"></li>
                            </ol>
                            <!-- Wrapper for slides-->
                            <div role="listbox" class="carousel-inner">
                                <div class="item active">
                                    <img src="../src/image/1.png" alt="">
                                </div>
                                <div class="item">
                                    <img src="../src/image/2.png" alt="">
                                </div>
                                <div class="item">
                                    <img src="../src/image/3.png" alt="">
                                </div>
                            </div>
                            <!-- Controls--><a href="#img-carousel" role="button" data-slide="prev" class="left carousel-control"><i aria-hidden="true" class="fa fa-chevron-left"></i><span class="sr-only">Previous</span></a><a href="#img-carousel" role="button" data-slide="next" class="right carousel-control"><i aria-hidden="true" class="fa fa-chevron-right"></i><span class="sr-only">Next</span></a>
                        </div>

                    </div>

                </div>

                <!--review list-->
                <div class="row">
                    <label>username - Rating</label>
                    <div class="well">Review here</div>
                </div>
                <div class="row">
                    <label>username - Rating</label>
                    <div class="well">Review here</div>
                </div>

                <!--add review-->
                <div class="row">
                    <form>
                        <div class="form-group">
                            <label for="comment">
                                Rating and enter your comment here: <select name="">
                                    <option>1</option>
                                    <option>2</option>
                                </select>
                            </label>
                            <textarea class="form-control" rows="5" id="comment"></textarea>
                        </div>
                        <div class="text-center">
                            <input type="submit" class="btn btn-success" value="Submit"/>
                            <input type="reset" class="btn btn-warning" value="Clear"/>
                        </div>
                    </form>
                </div>
            </div>

        </div>
    </body>
</html>
