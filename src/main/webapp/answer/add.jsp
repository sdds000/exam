<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/commons/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>answer add page</title>
    </head>
    <body>
        <h1>Answer Add Page</h1>
        <p>问题标题：${sessionScope.question.question}</p>
        <c:if test="${sessionScope.answer eq null}">
        <form action="${ctx}/answer/add" method="post">
            ANSWER: <textarea name="answer" cols="20" rows="5"></textarea><br>
            <input type="submit" value="ADD">
        </form>
        </c:if>
        <c:if test="${sessionScope.answer ne null}">
        <form action="${ctx}/answer/modify" method="post">
            ANSWER: <textarea name="answerString" cols="20" rows="5">${sessionScope.answer.answer}</textarea><br>
            <input type="submit" value="UPDATE">
        </form>
        </c:if>
    </body>
</html>