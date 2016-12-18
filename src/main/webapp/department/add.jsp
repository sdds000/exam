<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/commons/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>department add page</title>
    </head>
    <body>
        <h1>ADD Department</h1>
        <form action="${ctx}/department/add" method="post">
            <input name="dname" placeholder="DNAME"><br>
            <input type="submit" value="ADD">
        </form>
    </body>
</html>