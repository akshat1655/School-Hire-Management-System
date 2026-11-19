<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>About Us - School Hire</title>
        <link href="public/css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div id="header" style="height: 50px;padding:10px;">
            <img src="public/images/logo.png" id="logoImg" style="height: 60px;">
            <span style="font-weight: bolder;font-family: candara;font-size: 32px; position: absolute; margin-top: 10px;margin-left: 10px;">SchoolHire</span>
        </div>
        <%@include file="headerNav.jsp"%>
        <div id="home">
            <blockquote>
                <h1 style="font-family: candara; color: #234567;">About SchoolHire Platform</h1>
                <p style="font-family: candara; font-size: 18px; text-align: justify; line-height: 1.6;">
                    <strong>SchoolHire</strong> is a recruitment management system designed specifically for educational institutions, academies, and academic job seekers. Our platform bridges the gap between schools searching for qualified educators and passionate teaching professionals seeking rewarding career opportunities.
                </p>
                
                <h2 style="font-family: candara; color: #234567; margin-top: 30px;">Our Mission</h2>
                <p style="font-family: candara; font-size: 18px; text-align: justify; line-height: 1.6;">
                    To simplify and elevate academic recruitment through an intuitive, reliable, and transparent digital hiring ecosystem. We empower educational institutions to build exceptional faculties while giving candidates an effortless way to discover and apply for verified school openings.
                </p>
                
                <h2 style="font-family: candara; color: #234567; margin-top: 30px;">Why Choose SchoolHire?</h2>
                <ul style="font-family: candara; font-size: 18px; line-height: 1.8; color: #333;">
                    <li><strong>Dedicated to Education:</strong> Tailored specifically for teaching, administrative, and school staff roles.</li>
                    <li><strong>Transparent Hiring Lifecycle:</strong> Real-time status tracking keeps candidates informed at every step.</li>
                    <li><strong>Centralized Admin Controls:</strong> Institutional administrators manage openings, qualifications, and applicants in one portal.</li>
                    <li><strong>Verified Opportunities:</strong> Direct listings from accredited schools and educational boards.</li>
                </ul>
            </blockquote>
        </div>
    </body>
</html>
