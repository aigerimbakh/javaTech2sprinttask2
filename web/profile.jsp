<%@ page import="kz.bitlab.techorda.db.Items" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
</head>
<body>
<%@ include file="navbar.jsp" %>
<div class="container mt-3">
    <div class="row">
        <div class="col-6 mx-auto">
            <form action="/login" method="post">
                <div class="row">
                    <div class="col-12">
                        <label>Email:</label>
                    </div>
                </div>
                <div class="row mt-2">
                    <div class="col-12">
                        <input type="email" class="form-control" name="email" required placeholder="Insert Email">
                    </div>
                </div>

                <div class="row mt-3">
                    <div class="col-12">
                        <label>Password:</label>
                    </div>
                </div>
                <div class="row mt-2">
                    <div class="col-12">
                        <input type="password" class="form-control" name="password" required placeholder="Insert Password">
                    </div>
                </div>

                <div class="row mt-3">
                    <div class="col-12">
                        <button class="btn btn-success">Sign in</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

</body>
</html>
