<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<jsp:include page="/WEB-INF/partials/footer.jsp" />

<div class="container">
    <hr>
    <h1>AD LIST</h1>
    <hr>
    <br><br>
    <c:forEach var="ad" items="${ads}">
        <div class="col-md-12 ad_div">
            <form role="search" action="/ad_individ" method="get">
                <button class="adsBtn" name="id" value=${ad.getId()}>
                    <h2>${ad.title}</h2>
                    <h4>${ad.timestamp}</h4>
                    <p>${ad.description}</p>
                    <h4>${ad.getUsername()}</h4>
                </button>
            </form>
        </div>
    </c:forEach>
</div>

</body>
</html>
