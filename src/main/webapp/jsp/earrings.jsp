<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%--
  Created by IntelliJ IDEA.
  User: guldenzeynolla
  Date: 13.10.2020
  Time: 21:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>shop</title>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <link rel="stylesheet" href="../css/ehome.css">
    <link rel="stylesheet" href="../css/shop.css">
</head>
<body>
<c:import url="header.jsp"/>


<center>

    <h1> Jewelry </h1> <br>

<a href='bracelet.jsp'><button class="button-submit" >Bracelet</button></a>
<a href='ring.jsp'><button class="button-submit">Ring</button></a>
<a href='earrings.jsp'><button class="button-submit">Earrings</button></a>
<a href='necklace.jsp'><button class="button-submit">Necklace</button></a>
<a href='brooches.jsp'><button class="button-submit">Brooches</button></a>
</center>

<section class="products">
    <div class="product-card">

            <%
try {
    Class.forName("org.postgresql.Driver");
    Connection connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/Ass1APJ", "postgres", "068070");
    Statement statement = connection.createStatement();
    ResultSet resultSet = statement.executeQuery("select * from products where categoryid = 'Earrings'");
    int cnt= 0;
    while (resultSet.next()) {
        String productname,price,image,category;
        productname = resultSet.getString("productname").trim();
        price = resultSet.getString("price").trim();
        image = resultSet.getString("image").trim();
        category = resultSet.getString("categoryid").trim();
        if(cnt==1){
            out.print("</div><div class=\"product-card\">");
            cnt = 0;
        }
                cnt++;

       %>
        <div class="product-image">
            <img src="../img/<%=image%>" >
        </div>
        <div class="product-info">
            <h5><%=productname%></h5>
            <h6><%=price%></h6>
            <p><input type="submit" name="AddToCart"  class="button-submit" value="Add To Cart"></p>
        </div>

            <%
    }
}catch (Exception e){
    out.print(e);

}
%>
</section>
<c:import url="footer.jsp"/>
</body>
</html>
