<%--
  Created by IntelliJ IDEA.
  User: guldenzeynolla
  Date: 18.10.2020
  Time: 17:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script
            src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script
            src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
    <h2>LIST</h2>
    <p>
        <a class="btn btn-primary" href="/AdminServlet?action=AddOrEdit">ADD</a>
    </p>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>Image</th>
            <th>Product id</th>
            <th>Product name</th>
            <th>Price</th>
            <th>Category </th>
        </tr>
        </thead>
        <tbody>

       <c:forEach var="item" items="${LIST_INFORM}">

        <tr>
           <td width="100">${item.image}</td>
           <td>${item.productid}</td>
           <td>${item.productname}</td>
            <td>${item.price}</td>
            <td>${item.categoryid}</td>

            <td>
               <a class="btn btn-primary btn-sm"href="/AdminServlet?action=AddOrEdit">Edit</a> |
               <a class="btn btn-danger btn-sm" href="">Del</a></td>
       </tr>

       </c:forEach>


        </tbody>
    </table>
</div>
</body>
</html>
