<%--
  Created by IntelliJ IDEA.
  User: rohanayub
  Date: 1/17/17
  Time: 11:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hours Between Days</title>
</head>
<body>
<h3>Hello <%=request.getSession().getAttribute("user")%></h3>
<h4>There are <%=request.getAttribute("hours")%> hours between these two dates.</h4>
<p>
    <h4><a href="welcomeMenu.jsp">Return to Main Menu</a></h4>
</p>

</body>
</html>
