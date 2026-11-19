<%@page import="dao.CandidateDao"%>
<%@page import="dto.CandidateDto"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin | Candidate List</title>
        <link href="public/css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <!-- ✅ Header identical to Admin Vacancy Page -->
        <div id="header" style="height: 50px; padding:10px;">
            <img src="public/images/logo.png" id="logoImg" style="height: 60px;">
            <span style="font-weight: bolder; font-family: candara; font-size: 32px; position: absolute; margin-top: 10px; margin-left: 10px;">SchoolHire</span>
        </div>

        <!-- ✅ Include Admin Navbar -->
        <%@include file="adminHeaderNav.jsp"%>

        <div id="home">
            <blockquote>
                <%
                    String email = (String) session.getAttribute("email");
                    CandidateDao candidateDao = new CandidateDao();
                    ArrayList<CandidateDto> candidateList = (ArrayList<CandidateDto>) candidateDao.getAllCandidates();
                %>

                <h2 style="font-family: candara;">Welcome <%=email%> | Candidate List</h2>
                <p style="font-family: candara; font-size: 18px; text-align: justify;">

                <table border="1" cellspacing="0" cellpadding="10">
                    <thead>
                        <tr>
                            <th>Candidate<br>ID</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Password</th>
                            <th>Contact</th>
                            <th>Address</th>
                            <th>Date</th>
                            <th>Gender</th>
                            <th>Qualification</th>
                            <th>Experience</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            if (candidateList != null && !candidateList.isEmpty()) {
                                for (CandidateDto c : candidateList) {
                        %>
                        <tr>
                            <td><%= c.getCandidateId() %></td>
                            <td><%= c.getName() %></td>
                            <td><%= c.getEmail() %></td>
                            <td><%= c.getPassword() %></td>
                            <td><%= c.getContact() %></td>
                            <td><%= c.getAddress() %></td>
                            <td><%= c.getDate() %></td>
                            <td><%= c.getGender() %></td>
                            <td><%= c.getQualification() %></td>
                            <td><%= c.getExperience() %></td>
                        </tr>
                        <%
                                }
                            } else {
                        %>
                        <tr>
                            <td colspan="10" style="text-align:center; color:red;">No candidate records found!</td>
                        </tr>
                        <%
                            }
                        %>
                    </tbody>
                </table>

                </p>
            </blockquote>
        </div>
    </body>
</html>
