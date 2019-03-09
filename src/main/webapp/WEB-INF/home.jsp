<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>home</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<body>
<%@ include file="/WEB-INF/navbar.jsp" %>

<div class="jumbotron">
    <div class="container">
        <h1>Debts</h1>
        <p>To coś co pozwala zrobić komuś takie coś z kasą, że potem jest kaput, w sumie to nie, ale jej nie ma. Albo jest. I już.</p>
        <p>Dodać hasj też można, chyba, no ale jak chcesz. Można usunąć.</p>
        <p><a class="btn btn-primary btn-lg" href="<c:url value="/users"/>" role="button">Do It!</a></p>
    </div>
</div>

</body>
</html>