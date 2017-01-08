<!DOCTYPE html>
<%@ page pageEncoding="UTF-8" %>
<%@ include file="/commons/inc.jsp" %>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>salary list page</title>
    <script>
        function del() {
            return confirm('REMOVE?');
        }
    </script>
</head>
<body>
${sessionScope.pagination.list}
<hr>
<c:import url="add.jsp"/>
<hr/>
<form action="${ctx}/salary/queryUserSalariesByUsernameOrTime" method="post">
    姓名：<input name="username"> 工资月：<input name="time">
    <input type="submit" value="查询">
</form>
<hr>
<h1>LIST Salary</h1>
<hr/>
<table border="1">
    <tr>
        <th>员工</th>
        <th>TIME</th>
        <th>BASIC</th>
        <th>INSURANCE</th>
        <th>应发工资</th>
        <th colspan="2">OPERATION</th>
    </tr>
    <c:forEach var="salary" items="${sessionScope.pagination.list}">
        <tr>
            <td>${salary.user.username}</td>
            <td>${salary.time}</td>
            <td>${salary.basic}</td>
            <td>${salary.insurance}</td>
            <td>${salary.basic - salary.insurance}</td>
            <td><a href="${ctx}/salary/search/${salary.id}">EDIT</a></td>
            <td><a class="delete" href="${ctx }/salary/remove/${salary.id}" onclick="return del()">REMOVE</a></td>
        </tr>
    </c:forEach>
</table>
<c:import url="${ctx}/commons/page.jsp">
    <c:param name="path" value="salary/${sessionScope.pagination.statement}"/>
</c:import>
</body>
</html>