<%@page import="dao.CandidateDao"%>
<%@page import="config.GetConnection"%>
<%@page import="dto.CandidateDto"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Candidate | Deactivate Account</title>
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
                String alertMessage = null;
                String redirectUrl = null;
                CandidateDao dao = new CandidateDao();

                if (request.getParameter("btnDeactivate") != null) {
                    int i = dao.deactivateCandidateAccount(email);
                    if (i > 0) {
                        alertMessage = "Account deactivated successfully!";
                        session.invalidate(); // logout the user
                        redirectUrl = "candidateLogin.jsp";
                    } else {
                        alertMessage = "Error while deactivating account!";
                    }
                }
            %>

            <h2 style="font-family: candara;">Welcome <%=email%> | Deactivate Account</h2>

            <form action="" method="post" style="font-family: candara; font-size: 18px;">
                <table border="1" cellspacing="0" cellpadding="10" style="width: 60%; margin: auto; border-collapse: collapse;">
                    <thead style="background-color: #234567; color: white;">
                        <tr>
                            <th colspan="2">Deactivate Candidate Account</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td colspan="2" style="text-align:center; color:red; font-weight:bold;">
                                Warning: Once you deactivate your account, all your data will be permanently deleted.
                            </td>
                        </tr>
                        <tr>
                            <td><b>Email:</b></td>
                            <td><input type="text" name="email" value="<%=email%>" readonly style="width:95%; padding:6px; background-color:#f1f1f1;"></td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align:center;">
                                <input type="submit" name="btnDeactivate" value="Deactivate Account"
                                       onclick="return confirm('Are you sure you want to deactivate your account?');"
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
