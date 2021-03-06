<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: KJCurtis
  Date: 1/3/17
  Time: 11:14 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Update existing Ad" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<jsp:include page="/WEB-INF/partials/footer.jsp" />
<div class="container">
    <hr>
    <h1>Update existing Ad</h1>
    <hr>
<form action="/ads/update" method="post">
    <c:forEach var="ad" items="${ads}">
        <h2>${ad.title}</h2>
        <h4>${ad.timestamp}</h4>
        <p>${ad.description}</p>
        <h4>${ad.getUsername()}</h4>
    <div class="form-group">
            <label for="title">Title</label>
            <input id="title" name="title" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="description">Description</label>
            <textarea id="description" name="description" class="form-control"></textarea>
        </div>
        <button type="submit" class="btn btn-block btn-primary" name="id" value=${ad.getId()}>Submit</button>
    </c:forEach>
</form>

</div>
</body>
</html>


