<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/commons/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>department edit page</title>
    </head>
    <body>
        <h1>EDIT Department</h1>
        <form action="${ctx}/department/modify" method="post">
            <input type="hidden" name="id" value="${sessionScope.department.id}">
            DNAME: <input name="dname" value="${sessionScope.department.dname}"><br>
            <input type="submit" value="SAVE">
        </form>
    </body>
</html>