<!DOCTYPE html>
<%@ page pageEncoding="UTF-8" %>
<%@ include file="/commons/inc.jsp" %>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>question list page</title>
    <script>
        function del() {
            return confirm('REMOVE?');
        }
    </script>
</head>
<body>
<h1>Question List Page</h1>
<c:if test="${sessionScope.user.role eq 0}">
<p><a href="${ctx}/user/queryQuestionAnswer">查看问卷结果</a></p>
</c:if>
<table border="1">
    <tr>
        <th>INDEX</th>
        <th>QUESTION</th>
        <c:if test="${sessionScope.user.role eq 0}">
            <th colspan="2">OPERATION</th>
        </c:if>
        <c:if test="${sessionScope.user.role eq 1}">
            <th>回答</th>
        </c:if>
    </tr>
    <c:forEach var="question" items="${sessionScope.pagination.list}" varStatus="vs">
        <tr>
            <td>${vs.count}</td>
            <td>${question.question}</td>
            <c:if test="${sessionScope.user.role eq 0}">
                <td><a href="${ctx}/question/search/${question.id}">EDIT</a></td>
                <td><a class="delete" href="${ctx }/question/remove/${question.id}" onclick="return del()">REMOVE</a>
                </td>
            </c:if>
            <c:if test="${sessionScope.user.role eq 1}">
                <td><a href="${ctx}/question/search/${question.id}">进入回答</a></td>
            </c:if>
        </tr>
    </c:forEach>
</table>
<c:import url="${ctx}/commons/page.jsp">
    <c:param name="path" value="question/${sessionScope.pagination.selectId}"/>
</c:import>
<c:if test="${sessionScope.user.role eq 0}">
    <hr/>
    <c:import url="add.jsp"/>
</c:if>
</body>
</html>