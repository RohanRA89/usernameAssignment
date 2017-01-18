<%--
  Created by IntelliJ IDEA.
  User: rohanayub
  Date: 1/17/17
  Time: 9:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Days Left In The Year</title>
</head>
<body>
<h2>Hello <%=request.getSession().getAttribute("user")%> it seems you'd like to know how many days are left in the year.</h2>
<form method="post" action="/dateLeft">
    <table>
        <tr><td>Please enter today's date using only digits in yyyy-MM-dd format:</td><td><input type="text" name="currentDay"></td></tr>
    </table>
    <p>
        <input type="submit">
    </p>
</form>

</body>
</html>
