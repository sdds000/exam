<!DOCTYPE html>
<%@ page pageEncoding="UTF-8" %>
<%@ include file="/commons/inc.jsp" %>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>word index page</title>
</head>
<body>
<c:if test="${sessionScope.user eq null}">
    <c:redirect url="/"/>
</c:if>
<h1>Word Index Page</h1>

<h1>index page</h1>
welcome: ${sessionScope.user.username}<br/>
<a href="/user/logout">LOG OUT</a>

<p><a href="${ctx}/word/add.jsp">ADD</a></p>

<p><a href="${ctx}/word/list">LIST</a></p>
</body>
</html>