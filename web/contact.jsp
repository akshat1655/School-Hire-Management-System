<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact Us - School Hire</title>
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
                <h1 style="font-family: candara; color: #234567;">Contact SchoolHire Support</h1>
                <p style="font-family: candara; font-size: 18px; line-height: 1.6;">
                    Have questions about hiring school staff or encountering issues with your application? Reach out to our academic support team.
                </p>
                
                <div style="display: flex; flex-wrap: wrap; gap: 30px; margin-top: 25px;">
                    <div style="flex: 1; min-width: 280px; background: #f8f9fa; padding: 20px; border-radius: 6px; box-shadow: 0 1px 3px rgba(0,0,0,0.1);">
                        <h2 style="font-family: candara; color: #234567; margin-top: 0;">Get In Touch</h2>
                        
                        <p style="font-family: candara; font-size: 16px; line-height: 1.8; color: #444;">
                            <strong>📧 Support Email:</strong><br>
                            <a href="mailto:akshatjain1655@gmail.com" style="color: #234567; text-decoration: none;">akshatjain1655@gmail.com</a>
                        </p>
                        
                        <p style="font-family: candara; font-size: 16px; line-height: 1.8; color: #444;">
                            <strong>📞 Institutional Helpline:</strong><br>
                            <a href="tel:+917987761655" style="color: #234567; text-decoration: none;">+91 7987761655</a>
                        </p>
                        
                        <p style="font-family: candara; font-size: 16px; line-height: 1.8; color: #444;">
                            <strong>🏢 Campus Address:</strong><br>
                            SchoolHire Central Secretariat,<br>
                            Education Technology Park, Sector 4,<br>
                            New Delhi, India
                        </p>
                        
                        <p style="font-family: candara; font-size: 16px; line-height: 1.8; color: #444;">
                            <strong>⏰ Operational Hours:</strong><br>
                            Monday – Friday: 9:00 AM – 6:00 PM IST
                        </p>
                    </div>

                    <div style="flex: 1; min-width: 280px; background: #ffffff; padding: 20px; border: 1px solid #e0e0e0; border-radius: 6px;">
                        <h2 style="font-family: candara; color: #234567; margin-top: 0;">Send Us An Inquiry</h2>
                        
                        <form onsubmit="alert('Thank you for contacting SchoolHire! Our team will get back to you shortly.'); return false;">
                            <div style="margin-bottom: 12px;">
                                <label style="font-family: candara; font-size: 15px; font-weight: bold; display: block; margin-bottom: 4px;">Full Name</label>
                                <input type="text" required placeholder="Enter your full name" style="width: 95%; padding: 8px 10px; font-family: candara; border: 1px solid #ccc; border-radius: 4px;">
                            </div>
                            
                            <div style="margin-bottom: 12px;">
                                <label style="font-family: candara; font-size: 15px; font-weight: bold; display: block; margin-bottom: 4px;">Email Address</label>
                                <input type="email" required placeholder="your-email@example.com" style="width: 95%; padding: 8px 10px; font-family: candara; border: 1px solid #ccc; border-radius: 4px;">
                            </div>
                            
                            <div style="margin-bottom: 12px;">
                                <label style="font-family: candara; font-size: 15px; font-weight: bold; display: block; margin-bottom: 4px;">Subject</label>
                                <input type="text" required placeholder="e.g., Question about teaching vacancies" style="width: 95%; padding: 8px 10px; font-family: candara; border: 1px solid #ccc; border-radius: 4px;">
                            </div>
                            
                            <div style="margin-bottom: 15px;">
                                <label style="font-family: candara; font-size: 15px; font-weight: bold; display: block; margin-bottom: 4px;">Message</label>
                                <textarea required rows="4" placeholder="How can we assist you?" style="width: 95%; padding: 8px 10px; font-family: candara; border: 1px solid #ccc; border-radius: 4px;"></textarea>
                            </div>
                            
                            <button type="submit" style="background-color: #234567; color: white; border: none; padding: 10px 24px; font-family: candara; font-size: 16px; border-radius: 4px; cursor: pointer;">
                                Submit Message
                            </button>
                        </form>
                    </div>
                </div>
            </blockquote>
        </div>
    </body>
</html>
