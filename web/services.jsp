<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Our Services - School Hire</title>
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
                <h1 style="font-family: candara; color: #234567;">Our Recruitment Services</h1>
                <p style="font-family: candara; font-size: 18px; line-height: 1.6;">
                    SchoolHire provides institutional solutions tailored for educational hiring and career advancement.
                </p>
                
                <div style="display: flex; flex-wrap: wrap; gap: 20px; margin-top: 25px;">
                    <div style="flex: 1; min-width: 280px; background: #f8f9fa; border-left: 4px solid #234567; padding: 15px 20px; border-radius: 4px;">
                        <h3 style="font-family: candara; color: #234567; margin-top: 0;">1. Faculty & Teaching Staffing</h3>
                        <p style="font-family: candara; font-size: 16px; line-height: 1.5; color: #555;">
                            Publish and discover teaching positions across pre-primary, primary, secondary, and higher-secondary grades across all subjects and curriculums.
                        </p>
                    </div>
                    
                    <div style="flex: 1; min-width: 280px; background: #f8f9fa; border-left: 4px solid #234567; padding: 15px 20px; border-radius: 4px;">
                        <h3 style="font-family: candara; color: #234567; margin-top: 0;">2. School Administration Hiring</h3>
                        <p style="font-family: candara; font-size: 16px; line-height: 1.5; color: #555;">
                            Streamline recruitment for non-teaching personnel including school principals, vice-principals, librarians, accountants, and lab technicians.
                        </p>
                    </div>
                </div>

                <div style="display: flex; flex-wrap: wrap; gap: 20px; margin-top: 20px;">
                    <div style="flex: 1; min-width: 280px; background: #f8f9fa; border-left: 4px solid #234567; padding: 15px 20px; border-radius: 4px;">
                        <h3 style="font-family: candara; color: #234567; margin-top: 0;">3. Real-Time Application Tracking</h3>
                        <p style="font-family: candara; font-size: 16px; line-height: 1.5; color: #555;">
                            Candidates receive instant status updates on their submissions, from initial screening to interview scheduling and final status notifications.
                        </p>
                    </div>
                    
                    <div style="flex: 1; min-width: 280px; background: #f8f9fa; border-left: 4px solid #234567; padding: 15px 20px; border-radius: 4px;">
                        <h3 style="font-family: candara; color: #234567; margin-top: 0;">4. Verified Candidate Database</h3>
                        <p style="font-family: candara; font-size: 16px; line-height: 1.5; color: #555;">
                            Schools get access to a structured repository of candidate profiles with validated academic qualifications, teaching experience, and contact records.
                        </p>
                    </div>
                </div>
            </blockquote>
        </div>
    </body>
</html>
