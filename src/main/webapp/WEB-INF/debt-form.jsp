<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>New Debt</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">


</head>

<body>
<%@ include file="/WEB-INF/navbar.jsp" %>

<div class="container">

    <div class="row">
        <div class="col-sm-offset-6">
            <h4>Debtors</h4>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-offset-3 col-sm-6 col-xs-12">
            <form method = "post"
                  action="<c:url value="/debts/create"/>"
                  class="form-horizontal">
                <div class="form-group">

                    <label for="debtorId" class="col-sm-2 control-label">Debtor: </label>

                    <div class="col-sm-9">

                        <select id="debtorId" name="debtorId"

                                class="form-control">

                            <option value="">-- select debtor --</option>

                            <c:forEach var="debtor" items="${debtors}">

                                <option value="${debtor.id}">${debtor.firstName} ${debtor.lastName}</option>

                            </c:forEach>

                        </select>

                    </div>

                    <div class="col-sm-1">

                        <button type="button" class="btn btn-default">

                            <span class="glyphicon glyphicon-plus"></span>

                        </button>

                    </div>

                </div>

                <div>
                    <form class="form-inline">
                        <div class="form-group">
                            <label class="sr-only" for="exampleInputAmount">Amount (in PLN)</label>
                            <div class="input-group">
                                <div class="input-group-addon">PLN</div>
                                <input type="text" class="form-control" id="exampleInputAmount" placeholder="Amount">
                                <div class="input-group-addon">.00</div>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary">Send cash</button>
                    </form>
                </div>


            </form>
        </div>
    </div>
</div>
</body>
</html>