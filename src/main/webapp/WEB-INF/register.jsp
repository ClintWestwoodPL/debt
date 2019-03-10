<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Register</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <script

            src="https://code.jquery.com/jquery-2.2.4.min.js"

            integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="

            crossorigin="anonymous"></script>



    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"

            integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"

            crossorigin="anonymous"></script>

</head>

<body>

<div class="container">

    <div class="row">
        <div class="col-sm-offset-6">
            <h4>Register</h4>
        </div>
        <form action="<c:url value="/register"/>"
            method="post">
            <div class="form-group">
                <label for="firstName">First Name</label>
                <input type="text" class="form-control" required id="firstName" value="" placeholder="First Name" name="firstName">
            </div>
            <div class="form-group">
                <label for="lastName">Last Name</label>
                <input type="text" class="form-control" required id="lastName"  value="" placeholder="Last Name" name="lastName">
            </div>
            <div class="form-group">
                <label for="email">Login</label>
                <input type="email" class="form-control" required id="email" value="" placeholder="Email" name="email">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" class="form-control" required id="password" value="" placeholder="Password" name="password">
            </div>
            <button type="submit" class="btn btn-default">Register</button>
        </form>

    </div>
</div>
</body>
</html>