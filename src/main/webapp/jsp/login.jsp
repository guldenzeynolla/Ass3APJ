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

</footer></body>
</html>
