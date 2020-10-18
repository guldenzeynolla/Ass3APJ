<%--
  Created by IntelliJ IDEA.
  User: guldenzeynolla
  Date: 18.10.2020
  Time: 17:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script
            src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script
            src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <title>Admin</title>
</head>
<body>
<!-- private String productname;
    private String price;
    private String image;
    private String categoryid;
    -->
<div class="container" style="margin-top: 10px;">
    <div class="row"
         style="border: 1px darkgrey solid; border-radius: 10px; width: 50%; margin: 0 auto; padding: 20px;">
        <div class="col-sm-12">

            <h2 class="myclass">Add</h2>
            <form action="#" method="post" enctype="multipart/form-data">
                <div class="form-group">
                    <label>Product id</label>
                    <input type="text"
                           class="form-control" name="productid" placeholder="Enter product id">
                </div>
                <div class="form-group">
                    <label>Product name</label>
                    <input type="text"
                           class="form-control" name="productname" placeholder="Enter product name">
                </div>
                <div class="form-group">
                    <label>Price</label>
                    <input type="text"
                           class="form-control" name="price" placeholder="Enter price">
                </div>

                <div class="form-group">
                    <label>Image</label> <br/>

                    <input type="file"
                           class="form-control" name="image" placeholder="Enter image">
                </div>

                <div class="form-group">
                    <label>Category</label>
                    <input type="text"
                           class="form-control" name="categoryid" placeholder="Enter categoryid">
                </div>

                <button type="submit" class="btn btn-primary">Save</button>
                <button type="reset" class="btn btn-primary">Cancel</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>