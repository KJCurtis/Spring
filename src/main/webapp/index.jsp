<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="BKJ Ad Lister" />
    </jsp:include>

</head>

<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <jsp:include page="/WEB-INF/partials/footer.jsp" />
    <div class="container">
        <div class="site-wrapper">
            <div class="site-wrapper-inner">
                <div class="cover-container">
                    <div class="inner cover">
                        <h1 class="cover-heading">WELCOME TO ADLSTR</h1>
                        <br><br>
                        <p class="lead"> The premier service for finding the opportunities you seek.</p>
                        <p class="lead">
                            <a href="/ads" class="btn btn-lg btn-default">BROWSE ADS</a>
                            <a href="/register" class="btn btn-lg btn-default">SIGN-UP</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
