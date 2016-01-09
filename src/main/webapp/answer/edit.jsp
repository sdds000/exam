<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/commons/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>answer edit page</title>
    </head>
    <body>
        <h1>Answer Edit Page</h1>
        <form action="${ctx}/answer/modify" method="post">
            <input type="hidden" name="id" value="${sessionScope.answer.id}">
            ANSWER: <input name="answer" value="${sessionScope.answer.answer}"><br>
            USERID: <input name="userId" value="${sessionScope.answer.userId}"><br>
            QUESTIONID: <input name="questionId" value="${sessionScope.answer.questionId}"><br>
            <input type="submit" value="UPDATE">
        </form>
    </body>
</html>