<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/commons/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>answer list page</title>
        <script>
            function del() { return confirm('REMOVE?'); }
        </script>
    </head>
    <body>
        <h1>Answer List Page</h1>
        <hr/>
        <c:import url="add.jsp"/>
        <hr/>
        <table border="1">
            <tr>
                <th>INDEX</th>
                <th>ID</th>
                <th>ANSWER</th>
                <th>USERID</th>
                <th>QUESTIONID</th>
                <th colspan="2">OPERATION</th>
            </tr>
            <c:forEach var="answer" items="${sessionScope.pagination.list}" varStatus="vs">
            <tr>
                <td>${vs.count}</td>
                <td>${answer.id}</td>
                <td>${answer.answer}</td>
                <td>${answer.userId}</td>
                <td>${answer.questionId}</td>
                <td><a href="${ctx}/answer/search/${answer.id}">EDIT</a></td>
                <td><a class="delete" href="${ctx }/answer/remove/${answer.id}" onclick="return del()">REMOVE</a></td>
            </tr>
            </c:forEach>
        </table>
        <c:import url="${ctx}/commons/page.jsp">
            <c:param name="path" value="answer/${sessionScope.pagination.selectId}"/>
        </c:import>
    </body>
</html>