<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="commons/inc.jsp" %>
<html>
<head>
    <title>user page</title>
</head>
<body>
<c:if test="${sessionScope.user eq null}">
    <c:redirect url="/"/>
</c:if>
<h1>user page</h1>
user: ${sessionScope.user.username}<br/>
<a href="${ctx}/user/logout">LOG OUT</a>
<hr>
<table border="1">
    <tr>
        <th>员工</th>
        <th>TIME</th>
        <th>BASIC</th>
        <th>INSURANCE</th>
        <th>应发工资</th>
    </tr>
    <c:forEach var="salary" items="${sessionScope.pagination.list}">
        <tr>
            <td>${salary.user.username}</td>
            <td>${salary.time}</td>
            <td>${salary.basic}</td>
            <td>${salary.insurance}</td>
            <td>${salary.basic - salary.insurance}</td>
        </tr>
    </c:forEach>
</table>
<c:import url="${ctx}/commons/page.jsp">
    <c:param name="path" value="salary/${sessionScope.pagination.statement}"/>
</c:import>
</body>
</html>
