<%
    session.setAttribute("email", null);
    session.invalidate();
%>


<script>
    alert("Logout Successfully");
    window.location = "adminLogin.jsp";
</script>