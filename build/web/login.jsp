<%-- 
    Document   : login
    Created on : Jun 19, 2018, 10:02:56 AM
    Author     : Tu Khac Hieu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <p style="color: red;font-size: Italic">
            ${sessionScope.loginError}
        </p>
        <form action="LoginServlet" method="post">
            <p>Username <input type="text" name="uid"/>
            <p>Password <input type="password" name="pwd"/>
            <p><input type="submit" value="Sign in"/>
        </form>
    </body>
</html>
