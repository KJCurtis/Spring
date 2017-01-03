<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Register For Our Site!" />
    </jsp:include>
</head>
<body>
    <jsp:include page="partials/navbar.jsp" />
    <jsp:include page="partials/footer.jsp" />
    <div class="container">
        <hr>
        <h1>Create an account</h1>
        <p><em>Please fill in your information</em></p>
        <hr>
        <c:if test="${sessionScope.errorMessage != null}">
            <div class="has-error alert alert-danger" role="alert">${sessionScope.errorMessage}</div>
        </c:if>
        <form action="/register" method="post">
            <div class="form-group">
                <label for="username">Username</label>
                <input id="username" name="username" class="form-control register_field" type="text">
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input id="email" name="email" class="form-control register_field" type="text">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <p><em>Must be at least six characters in length</em></p>
                <input id="password" name="password" class="form-control register_field" type="password">
            </div>
            <div class="form-group">
                <label for="confirm_password">Confirm Password</label>
                <input id="confirm_password" name="confirm_password" class="form-control register_field" type="password">
            </div>
            <input type="submit" class="btn btn-primary btn-block" id="submit_length_mod_reg">
        </form>
    </div>
</body>
</html>
