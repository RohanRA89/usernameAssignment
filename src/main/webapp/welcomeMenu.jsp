<%--
  Created by IntelliJ IDEA.
  User: rohanayub
  Date: 1/17/17
  Time: 5:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome Page</title>
</head>
<body>
    <h2>Hello <%=request.getSession().getAttribute("user")%>. Welcome!</h2>
<h3>Which of the following would you like to do?</h3>
    <ol>
        <li><h4><a href="daysLeftInTheYear.jsp">Find out how many days until 2018</a></h4></li>
        <li><h4><a href="hoursBetween.jsp">Find out how many hours between two dates</a></h4></li>
        <li><h4><a href="catPhoto.jsp">See a picture of a cat</a></h4></li>
        <li><h4><a href="newUsername.jsp">Change your username</a></h4></li>
    </ol>
</body>
</html>
