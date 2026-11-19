<%@page import="dao.AdminDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Admin | Update Password</title>
    <link href="public/css/style.css" rel="stylesheet" type="text/css"/>
</head>
<body>

    <!-- ✅ Header same as Admin View Vacancy -->
    <div id="header" style="height: 50px; padding:10px;">
        <img src="public/images/logo.png" id="logoImg" style="height: 60px;">
        <span style="font-weight: bolder; font-family: candara; font-size: 32px; position: absolute; margin-top: 10px; margin-left: 10px;">
            SchoolHire
        </span>
    </div>

    <%@include file="adminHeaderNav.jsp"%>

    <div id="home">
        <blockquote>
            <%
                String email = (String) session.getAttribute("email");
                String alertMessage = null;
                String redirectUrl = null;

                if (request.getParameter("btnUpdate") != null) {
                    String newPass = request.getParameter("newPassword");
                    String confirmPass = request.getParameter("confirmPassword");

                    if (newPass.equals(confirmPass)) {
                        AdminDao dao = new AdminDao();
                        int i = dao.updateAdminPassword(email, newPass);
                        if (i > 0) {
                            alertMessage = "Password updated successfully!";
                            redirectUrl = "adminHome.jsp";  // redirect after success
                        } else {
                            alertMessage = "Error while updating password!";
                        }
                    } else {
                        alertMessage = "Passwords do not match!";
                    }
                }
            %>

            <h2 style="font-family: candara;">Welcome <%=email%> | Update Password</h2>

            <form action="" method="post" style="font-family: candara; font-size: 18px; text-align: justify;">
                <table border="1" cellspacing="0" cellpadding="10" style="width: 60%; margin: auto; border-collapse: collapse;">
                    <thead style="background-color: #234567; color: white;">
                        <tr>
                            <th colspan="2">Change Password</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><b>New Password:</b></td>
                            <td><input type="password" name="newPassword" required style="width: 95%; padding: 6px;"></td>
                        </tr>
                        <tr>
                            <td><b>Confirm Password:</b></td>
                            <td><input type="password" name="confirmPassword" required style="width: 95%; padding: 6px;"></td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align:center;">
                                <input type="submit" name="btnUpdate" value="Update Password"
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
