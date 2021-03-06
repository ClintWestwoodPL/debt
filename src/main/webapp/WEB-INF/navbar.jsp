<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand"  href="<c:url value="/"/>"> <span class="glyphicon glyphicon-home"> </span> </a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="<c:url value="/debts"/>">Debt list <span class="sr-only">(current)</span></a></li>
                <li><a href="<c:url value="/debts/create"/>">New debt <span class="sr-only">(current)</span></a></li>

               <sec:authorize access="hasRole('ADMIN')">
                <li><a href="<c:url value="/users"/>">Users <span class="sr-only">(current)</span></a></li>
               </sec:authorize>

            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="<c:url value="/logout"/>">Logout <span class="sr-only">(current)</span></a></li>
            </ul>

        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>