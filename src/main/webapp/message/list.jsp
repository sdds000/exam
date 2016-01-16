<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/commons/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>message list page</title>
        <script>
            function del() { return confirm('REMOVE?'); }
        </script>
    </head>
    <body>
    <c:if test="${sessionScope.user eq null}">
        <c:redirect url="${ctx}/static/error.html"/>
    </c:if>
        <h1>Message List Page</h1>
        <hr/>
        <table border="1">
            <tr>
                <th>INDEX</th>
                <th>ID</th>
                <th>NAME</th>
                <th>CONTENT</th>
                <th>TIME</th>
                <th>REMOVE</th>
            </tr>
            <c:forEach var="message" items="${sessionScope.pagination.list}" varStatus="vs">
            <tr>
                <td>${vs.count}</td>
                <td>${message.id}</td>
                <td>${message.name}</td>
                <td>${message.content}</td>
                <td>${message.time}</td>
                <td><a class="delete" href="${ctx }/message/remove/${message.id}" onclick="return del()">REMOVE</a></td>
            </tr>
            </c:forEach>
        </table>
        <c:import url="${ctx}/commons/page.jsp">
            <c:param name="path" value="message/${sessionScope.pagination.selectId}"/>
        </c:import>
    </body>
</html>