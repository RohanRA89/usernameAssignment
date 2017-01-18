<%--
  Created by IntelliJ IDEA.
  User: rohanayub
  Date: 1/18/17
  Time: 12:14 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Updating Username</title>
</head>
<body>
<h3>What would you like your new username to be?</h3>
<form method="post" action="/loggingIn">
    <table>
        <tr><td>Username:</td><td><input type="text" name="username"></td></tr>
    </table>
    <p>
        <input type="submit">
    </p>

</form>
</body>
</html>
