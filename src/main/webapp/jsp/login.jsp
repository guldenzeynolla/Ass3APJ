<%--
  Created by IntelliJ IDEA.
  User: guldenzeynolla
  Date: 12.10.2020
  Time: 19:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>Log in</title>
    <link rel="stylesheet" href="../css/ehome.css">
    <link rel="stylesheet" href="../css/contact.css">
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
<c:import url="header.jsp"/>

<main>
    <form class="form" action="../LoginServlet">

        <pre>
            <p>Number: <input type="text" name="number" class="feedback-input"></p>
            <p> Password: <input type="password" name="password" class="feedback-input"></p>
            <p><input type="submit" name="submit"  class="button-submit" value="login"></p>

            <p><a href="registration.jsp"> Registration </a></p>

        </pre>
    </form>
</main>
<c:import url="footer.jsp"/>
</body>
</html>
