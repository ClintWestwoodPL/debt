<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<head>
    <meta charset="UTF-8">
    <!-- Latest compiled and minified CSS -->

    <title>List of all debts</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

</head>
<body>
<%@ include file="/WEB-INF/navbar.jsp" %>
<div class="container">
    <div class="row">
        <div class="col-sm-offset-5">
            <h4>Debt list</h4>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-12">

            <table class="table table-striped table-bordered  table-hover  ">
                <thead>
                <tr>
                    <th>Id</th>
                    <th>Lender</th>
                    <th>Debtor</th>
                    <th>Amount</th>
                    <th class="col-sm-1"></th>


                </tr>

                </thead>
                <tbody>

                <c:forEach var="debt" items="${debts}" varStatus="loop">
                    <tr>
                        <td>${debt.id}</td>
                        <td>${debt.lenderName}</td>
                        <td>${debt.deptorName}</td>
                        <td>${debt.amount}</td>
                        <td></td>
                    </tr>

                </c:forEach>

                </tbody>
            </table>

        </div>

    </div>

</div>




<script>
    $('#potwierdzenie').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget)
        var nazwa = button.data('nazwa')
        var id = button.data('id')
        var modal = $(this)

        $('#nazwa-uzytkownika', modal).text(nazwa)
        $('#id-uzytkownika', modal).text(id)
    })
</script>

</body>
</html>
