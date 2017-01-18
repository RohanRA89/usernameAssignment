<%--
  Created by IntelliJ IDEA.
  User: rohanayub
  Date: 1/17/17
  Time: 10:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>The Final Countdown</title>
</head>
<body>
    <h3>Hello <%=request.getSession().getAttribute("user")%> there are <%=request.getAttribute("daysLeft")%> until New Years.</h3>

    <h4><a href="welcomeMenu.jsp">Return to Main Menu.</a></h4>

</body>
</html>
