<%--
  Created by IntelliJ IDEA.
  User: guldenzeynolla
  Date: 13.10.2020
  Time: 14:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>Registration</title>
    <link rel="stylesheet" href="../css/contact.css">
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
<c:import url="header.jsp"/>

<form class="form" action="../RegistrationServlet">
        <pre>
            <p>Number: <input type="text" name="number" class="feedback-input"></p>
            <p>Email: <input type="email" name="email" class="feedback-input"></p>
            <p>Password: <input type="password" name="password" class="feedback-input"></p>
            <p><input type="submit" name="submit"  class="button-submit" value="Sign up"></p>
            <p><a href="login.jsp"> Log in </a></p>
        </pre>
</form>

<c:import url="footer.jsp"/>

</body>
</html>
