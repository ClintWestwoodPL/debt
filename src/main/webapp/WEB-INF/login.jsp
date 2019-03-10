<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="en">


<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

</head>

<body>

<div class="container">

    <div class="row">
        <div class="col-sm-offset-6">
            <h4>Login</h4>
        </div>
        <form action="<c:url value="/login-process"/>" method="post">
            <div class="form-group">
                <label for="login">Login</label>
                <input type="email" class="form-control" id="login" value="" placeholder="Login" name="email">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" class="form-control" id="password" value="" placeholder="Password" name="password">
            </div>
            <button type="submit" class="btn btn-default">Login</button>
            <a class="btn btn-default" href="/register" role="button">Register</a>
        </form>

</div>
</div>
</body>
</html>