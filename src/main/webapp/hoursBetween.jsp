<%--
  Created by IntelliJ IDEA.
  User: rohanayub
  Date: 1/17/17
  Time: 11:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hours Between Dates</title>
</head>
<body>
<h4>Please enter two dates using only digits and in the yyyy-MM-dd format. Enter the recent date first.</h4>
<form method="post" action="/hoursBetweenTwoDates">
    <table>
        <tr><td>Please enter day one:</td><td><input type="text" name="dayOne"></td></tr>
        <tr><td>Please enter day two:</td><td><input type="text" name="dayTwo"></td></tr>
    </table>
    <p>
        <input type="submit">
    </p>
</form></body>
</html>
