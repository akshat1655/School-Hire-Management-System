<%@page import="dao.CandidateDao"%>
<%@page import="dto.CandidateDto"%>
<%@page import="config.GetConnection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>





<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Candidate | Update Profile</title>
        <link href="public/css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <!-- ✅ Header same as other pages -->
        <div id="header" style="height: 50px; padding:10px;">
            <img src="public/images/logo.png" id="logoImg" style="height: 60px;">
            <span style="font-weight: bolder; font-family: candara; font-size: 32px; position: absolute; margin-top: 10px; margin-left: 10px;">
                SchoolHire
            </span>
        </div>

        <%@include file="candidateHeaderNav.jsp"%>

        <div id="home">
            <blockquote>
                <%
                    String email = (String) session.getAttribute("email");
                    CandidateDao dao = new CandidateDao();
                    CandidateDto candidate = new CandidateDto();
                    String alertMessage = null;
                    String redirectUrl = null;

                    // Fetch candidate data from DB
                    try {
                       Connection con = GetConnection.getConnect();
                        String query = "SELECT * FROM candidate WHERE email=?";
                        PreparedStatement ps = con.prepareStatement(query);
                        ps.setString(1, email);
                        ResultSet rs = ps.executeQuery();
                        if (rs.next()) {
                            candidate.setName(rs.getString("name"));
                            candidate.setEmail(rs.getString("email"));
                            candidate.setContact(rs.getString("contact"));
                            candidate.setAddress(rs.getString("address"));
                            candidate.setQualification(rs.getString("qualification"));
                            candidate.setExperience(rs.getString("experience"));
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }

                    // Handle update form submission
                    if (request.getParameter("btnUpdate") != null) {
                        CandidateDto update = new CandidateDto();
                        update.setEmail(email);
                        update.setName(request.getParameter("name"));
                        update.setContact(request.getParameter("contact"));
                        update.setAddress(request.getParameter("address"));
                        update.setQualification(request.getParameter("qualification"));
                        update.setExperience(request.getParameter("experience"));

                        int i = dao.updateCandidateProfile(update);
                        if (i > 0) {
                            alertMessage = "Profile updated successfully!";
                            redirectUrl = "candidateHome.jsp";
                        } else {
                            alertMessage = "Error while updating profile!";
                        }
                    }
                %>

                <h2 style="font-family: candara;">Welcome <%=email%> | Update Profile</h2>

                <form action="" method="post" style="font-family: candara; font-size: 18px;">
                    <table border="1" cellspacing="0" cellpadding="10" style="width: 70%; margin: auto; border-collapse: collapse;">
                        <thead style="background-color: #234567; color: white;">
                            <tr>
                                <th colspan="2">Candidate Profile Information</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><b>Name:</b></td>
                                <td><input type="text" name="name" value="<%=candidate.getName()%>" required style="width:95%; padding:6px;"></td>
                            </tr>
                            <tr>
                                <td><b>Email:</b></td>
                                <td><input type="text" name="email" value="<%=candidate.getEmail()%>" readonly style="width:95%; padding:6px; background-color:#f1f1f1;"></td>
                            </tr>
                            <tr>
                                <td><b>Contact:</b></td>
                                <td><input type="text" name="contact" value="<%=candidate.getContact()%>" required style="width:95%; padding:6px;"></td>
                            </tr>
                            <tr>
                                <td><b>Address:</b></td>
                                <td><input type="text" name="address" value="<%=candidate.getAddress()%>" required style="width:95%; padding:6px;"></td>
                            </tr>
                            <tr>
                                <td><b>Qualification:</b></td>
                                <td><input type="text" name="qualification" value="<%=candidate.getQualification()%>" required style="width:95%; padding:6px;"></td>
                            </tr>
                            <tr>
                                <td><b>Experience:</b></td>
                                <td><input type="text" name="experience" value="<%=candidate.getExperience()%>" required style="width:95%; padding:6px;"></td>
                            </tr>
                            <tr>
                                <td colspan="2" style="text-align:center;">
                                    <input type="submit" name="btnUpdate" value="Update Profile"
                                           style="background-color:#234567; color:white; padding:8px 20px; border:none; cursor:pointer; border-radius:5px;">
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </form>

                <% if (alertMessage != null) { %>
                    <script>
                        alert("<%=alertMessage%>");
                        <% if (redirectUrl != null) { %>
                            window.location.href = "<%=redirectUrl%>";
                        <% } %>
                    </script>
                <% } %>

            </blockquote>
        </div>
    </body>
</html>
