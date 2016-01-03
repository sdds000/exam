<%@ page contentType="text/html;charset=UTF-8" language="java" %><%@ include file="commons/inc.jsp"%>
<html>
<head>
    <title>default page</title>
</head>
<body>
<h1>default page</h1>
<form action="/user/login" method="post">
    username: <input name="username" value="a"><br/>
    password: <input name="password" type="password" value="a"><br/>
    <input type="submit" value="LOGIN">
</form>
<hr>
<form action="${ctx}/word/query" method="post">
    <input name="string">
    <input type="submit" value="QUERY">
</form>
<hr/>
<table border="1">
    <tr>
        <th>INDEX</th>
        <th>ID</th>
        <th>ENGLISH</th>
        <th>CHINESE</th>
        <th>SENTENCE</th>
    </tr>
    <c:forEach var="word" items="${sessionScope.words}" varStatus="vs">
        <tr>
            <td>${vs.count}</td>
            <td>${word.id}</td>
            <td>${word.english}</td>
            <td>${word.chinese}</td>
            <td>${word.sentence}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
