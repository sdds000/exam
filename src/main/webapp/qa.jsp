<!DOCTYPE html>
<%@ page pageEncoding="UTF-8" %>
<%@ include file="/commons/inc.jsp" %>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>question answer list page</title>
    <script>
        function del() {
            return confirm('REMOVE?');
        }
    </script>
</head>
<body>
<h1>Question Answer List Page</h1>
<ol>
    <c:forEach var="question" items="${sessionScope.questions}" varStatus="vs">
        <li>${question.question}</li>
            <ul>
            <c:forEach var="answer" items="${question.answers}">
                <li>${answer.user.username} : ${answer.answer}</li>
            </c:forEach>
            </ul>
    </c:forEach>
</ol>
</body>
</html>