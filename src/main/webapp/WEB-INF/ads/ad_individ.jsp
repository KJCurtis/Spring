<%--
  Created by IntelliJ IDEA.
  User: Calcious
  Date: 12/20/16
  Time: 9:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>AdShow Page</title>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<jsp:include page="/WEB-INF/partials/footer.jsp" />
<div class="container">
    <div class="col-md-12 ad_div">
        <c:forEach var="ad" items="${ads}">
            <h2 id="large_headline">${ad.title}</h2>
            <h4>${ad.timestamp}</h4>
            <p id="cust_paragraph_text">${ad.description}</p>
            <h4 id="middle_headline">${ad.getUsername()}</h4>
        </c:forEach>
    </div>
    <c:choose>
        <c:when test="${sessionScope.user != null}">
            <a href="/ads/create" class="btn btn-lg btn-default">UPDATE</a>
            <a href="/register" class="btn btn-lg btn-default">SAVE</a>
            <a href="/register" class="btn btn-lg btn-default">REMOVE</a>
        </c:when>
        <c:otherwise>
            <a href="/register" class="btn btn-lg btn-default">RESPOND</a>
            <a href="/register" class="btn btn-lg btn-default">SAVE</a>
        </c:otherwise>
    </c:choose>
</div><!-- /.container-fluid -->
</body>
</html>
