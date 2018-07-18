<%-- 
    Document   : Feedback
    Created on : Jul 11, 2018, 8:15:16 AM
    Author     : Tu Khac Hieu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href='https://fonts.googleapis.com/css?family=Open Sans' rel='stylesheet' type='text/css'>
        <link href="https://netdna.bootstrapcdn.com/font-awesome/3.0.2/css/font-awesome.css" rel="stylesheet">
        <link rel="stylesheet" href="../src/css/feedbackAd.css">
        <title>FeedBack to Admin</title>
    </head>
    <body>
        <div id="content">
            <h1>Feedback to Admin</h1>

            <form action=" " method="post" autocomplete="on">
                <p>
                    <label for="username" class="icon-user"> Name
                        <span class="required">*</span>
                    </label>
                    <input type="text" name="username" id="username" required="required" placeholder="Your Name" />
                </p>

                <p>
                    <label for="usermail" class="icon-envelope"> E-mail address
                        <span class="required">*</span>
                    </label>
                    <input type="email" name="usermail" id="usermail" placeholder="I promise I hate spam too!" required="required" />
                </p>
                <p>
                    <label for="subject" class="icon-bullhorn"> Subject</label>
                    <input type="text" name="subject" id="subject" placeholder="What would you like to talk about?" />
                </p>

                <p>
                    <label for="message" class="icon-comment"> Message
                        <span class="required">*</span>
                    </label>
                    <textarea placeholder="Your message here and I'll answer as soon as possible " required="required"></textarea>
                </p>
                <p class="indication">Fields with
                    <span class="required"> * </span>are required</p>

                <input type="submit" value=" Send this mail ! " />

            </form>
        </div>
    </body>
</html>
