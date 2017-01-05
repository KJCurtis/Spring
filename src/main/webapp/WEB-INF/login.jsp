<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <jsp:include page="/WEB-INF/partials/footer.jsp" />
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1>Please Log In</h1>
                <form action="/login" method="POST">
                    <div class="form-group">
                        <label for="username">Username</label>
                        <input id="username" name="username" class="form-control register_field" type="text">
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <input id="password" name="password" class="form-control register_field" type="password">
                    </div>
                    <input type="submit" class="btn btn-primary btn-block submit_length_mod_in" id="submit_length_mod_in" value="Log In">
                    <a type="button" href="/register" class="btn btn-primary btn-block submit_length_mod_in">Register</a>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
