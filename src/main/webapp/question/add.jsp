<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/commons/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>question add page</title>
    </head>
    <body>
        <h1>Question Add Page</h1>
        <form action="${ctx}/question/add" method="post">
            QUESTION: <input name="question"><br>
            <input type="submit" value="ADD">
        </form>
    </body>
</html>