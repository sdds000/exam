<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/commons/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>salary add page</title>
    </head>
    <body>
        <h1>ADD Salary</h1>
        <form action="${ctx}/salary/add" method="post">
            <select name="userId">
                <c:forEach var="user" items="${sessionScope.users}">
                    <option value="${user.id}">${user.username}</option>
                </c:forEach>
            </select><br>
            <input name="time" placeholder="TIME" value="2016年1月"><br>
            <input name="basic" placeholder="BASIC" value="10000.00"><br>
            <input name="insurance" placeholder="INSURANCE" value="1000.00"><br>
            <input type="submit" value="ADD">
        </form>
    </body>
</html>