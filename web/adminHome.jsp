<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Dashboard - School Hire</title>
        <link href="public/css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div id="header" style="height: 50px;padding:10px;">
            <img src="public/images/logo.png" id="logoImg" style="height: 60px;">
            <span style="font-weight: bolder;font-family: candara;font-size: 32px; position: absolute; margin-top: 10px;margin-left: 10px;">SchoolHire</span>
        </div>
        <%@include  file="adminHeaderNav.jsp"%>
        <div id="home">
            <blockquote>
                <%
                    String email = (String)session.getAttribute("email");
                %>
                <h1 style="font-family: candara;">Welcome <%=email%></h1>
                <p style="font-family: candara;font-size: 18px; text-align: justify; line-height: 1.6;">
                    Welcome to the SchoolHire Administrator Control Panel. From here you can publish new job vacancies, review submitted candidate profiles, monitor ongoing job applications, and update application statuses across all departments.
                </p>
                <p style="font-family: candara;font-size: 18px; text-align: justify; line-height: 1.6;">
                    Use the navigation menu above to manage openings, inspect candidate qualifications, or update your security settings.
                </p>
            </blockquote>
        </div>
        
    </body>
</html>
