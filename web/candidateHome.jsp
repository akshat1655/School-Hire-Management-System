<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Candidate Dashboard - School Hire</title>
        <link href="public/css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div id="header" style="height: 50px;padding:10px;">
            <img src="public/images/logo.png" id="logoImg" style="height: 60px;">
            <span style="font-weight: bolder;font-family: candara;font-size: 32px; position: absolute; margin-top: 10px;margin-left: 10px;">SchoolHire</span>
        </div>
        <%@include  file="candidateHeaderNav.jsp"%>
        <div id="home">
            <blockquote>
                <%
                    String email = (String)session.getAttribute("email");
                %>
                <h1 style="font-family: candara;">Welcome <%=email%></h1>
                <p style="font-family: candara;font-size: 18px; text-align: justify; line-height: 1.6;">
                    Welcome to your candidate dashboard. Explore newly published teaching and administrative vacancies, apply to matching positions directly, and monitor your hiring status in real time.
                </p>
                <p style="font-family: candara;font-size: 18px; text-align: justify; line-height: 1.6;">
                    Ensure your contact details and academic qualifications are up-to-date in your profile to maximize your interview chances.
                </p>
            </blockquote>
        </div>
        
    </body>
</html>
