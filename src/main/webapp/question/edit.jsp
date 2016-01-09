<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/commons/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>question edit page</title>
    </head>
    <body>
        <h1>Question Edit Page</h1>
        <form action="${ctx}/question/modify" method="post">
            <input type="hidden" name="id" value="${sessionScope.question.id}">
            QUESTION: <input name="question" value="${sessionScope.question.question}"><br>
            <input type="submit" value="UPDATE">
        </form>
    </body>
</html>