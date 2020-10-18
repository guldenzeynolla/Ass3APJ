<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: guldenzeynolla
  Date: 17.10.2020
  Time: 12:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="utf-8">
    <title>Edelweiss</title>
    <link rel="stylesheet" href="css/ehome.css">
    <link rel="stylesheet" href="css/ehome-slide.css">
    <link rel="stylesheet" href="css/shop.css">
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

</head>

<body>

<c:import url="header.jsp"/>


<main>
    <center>
        <h1>BRAND OF MODERN JEWELERY</h1>
        <h3>made with love</h3><br>
    </center>
    <div class="slideshow-container">

        <center>
            <div class="mySlides fade">
                <img src="../img/photo-1511253819057-5408d4d70465.jpeg" style="width: 100% ;" alt="">
            </div>

            <div class="mySlides fade">
                <img src="../img/photo-1531995811006-35cb42e1a022.jpeg" style="width: 100% ;" alt="">
            </div>

            <div class="mySlides fade">
                <img src="../img/photo-1542990254-85e6a9a2ef92.jpeg" style="width: 100% ;" alt="">
            </div>

            <div class="mySlides fade">
                <img src="../img/photo-1450297166380-cabe503887e5.jpeg" style="width: 100% ;" alt="">
            </div>
        </center>

        <a class="prev" onclick="plusSlides(-1)">&#10094</a>
        <a class="next" onclick="plusSlides(-1)">&#10095</a>

    </div>
    <br>
    <br>
    <h2>
        The brand was founded in 2019, by Bekenova Zhanar and Duysenova Jana,immediately after completing 11 years of study and the 3rd year of College. </li>
        <br>

        Half a year we sell beautiful and high-quality jewelry for modern girls.We are approached for a subtle style, trendy models, high quality, ease
        and European vision of our supplier. We know how to make a girl's bow beautiful and emphasize its zest. Here you will not find "template" jewelry,
        you will not feel indifference. We value individuality and choice.
        <br>

        Expert service from us, we will help you choose the decoration for the format of the celebration,the type of figure, and color type of appearance,
        all stylists have an artistic vision and have been trained in individual selection of jewelry.
        <br>
        <br>
    </h2>
    <center>
        <form>
            <input type="button" value="See more" class="button-submit" onClick="window.open('shop.jsp')" />
        </form>
    </center>
    <br>
    <br>
</main>
<c:import url="footer.jsp"/>

<script src="../js/ehome.js"></script>
<script src="../js/ehome-slide.js"></script>

</body>
</html>
