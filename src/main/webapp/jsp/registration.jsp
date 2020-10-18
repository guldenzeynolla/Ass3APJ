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
    <link rel="stylesheet" href="../css/ehome.css">

    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
<header>

    <center>
        <nav>
            <div class="topnav" id="myTopnav">
                <a href="login.jsp">LOGIN</a>
                <a href="registration.jsp">REGISTER</a>
                <a id="menu" href="#" class="icon">&#9776;</a>
            </div>
        </nav>

    </center>
</header>
<form class="form" action="../RegistrationServlet">
        <pre>
            <p>Number: <input type="text" name="number" class="feedback-input"></p>
            <p>Email: <input type="email" name="email" class="feedback-input"></p>
            <p>Password: <input type="password" name="password" class="feedback-input"></p>
            <p><input type="submit" name="submit"  class="button-submit" value="Sign up"></p>
            <p><a href="login.jsp"> Log in </a></p>
        </pre>
</form>


<footer>

    <nav>
        <a href="login.jsp">LOGIN</a>
        <a href="registration.jsp">REGISTER</a>
    </nav>
    <div class="social">
        <a href="https://vk.com/bbzhanara02"><img src="../img/vk.png" alt=""></a>
        <a href="https://www.instagram.com/edelweiss_jewelry_/"><img src="../img/inst.png" alt=""></a>
        <a href=" https://wa.me/77755399310"><img src="../img/wa.png" alt=""></a>
    </div>
    <p>Zeynolla Gulden.2020</p>

</footer>
</body>
</html>
