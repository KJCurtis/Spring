<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Calcious
  Date: 12/20/16
  Time: 9:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>AdShow Page</title>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<c:forEach var="ad" items="${ads}">
    <a href="/ad_individ">
        <div class="col-md-6 ad_div">
            <h2>${ad.title}</h2>
            <h4>${ad.timestamp}</h4>
            <p>${ad.description}</p>
            <h4>${ad.getUsername()}</h4>
        </div>
    </a>
</c:forEach>
<footer class="footer navbar-fixed-bottom navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header navbar-inverted">
            <a class="navbar-brand welcome_title" href="/index">@ Copyright 2016</a>
            <a class="navbar-right navbar-brand welcome_title">BKJ Productions</a>
        </div>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</footer>
</body>
</html>
