<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>index page</title>
</head>
<body>
<c:if test="${sessionScope.user eq null}">
    <c:redirect url="${ctx}/static/error.html"/>
</c:if>
<h1>index page</h1>
welcome: ${sessionScope.user.username}<br/>
<a href="/user/logout">LOG OUT</a>
<hr>
<a href="${ctx}/message/list">留言列表</a>
</body>
</html>
