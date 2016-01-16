<!DOCTYPE html>
<%@ page pageEncoding="UTF-8" %>
<%@ include file="/commons/inc.jsp" %>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>message add page</title>
    <script src="${ctx}/static/js/jquery-1.11.3.min.js"></script>
    <script>
        function check() {
            var name = $.trim($('#name').val());
            return name != '';
        }
    </script>
</head>
<body>
<h1>Message Add Page</h1>

<form action="${ctx}/message/add" method="post" onsubmit="return check()">
    NAME: <input id="name" name="name"><br>
    CONTENT: <input name="content"><br>
    <input type="submit" value="ADD">
</form>
</body>
</html>