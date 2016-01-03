<!DOCTYPE html>
<%@ page pageEncoding="UTF-8" %>
<%@ include file="/commons/inc.jsp" %>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>word add page</title>
    <script src="${ctx}/static/js/jquery-1.11.3.min.js"></script>
    <script>
        function check() {
            var english = $('#english').val();
            var chinese = $('#chinese').val();
            var sentence = $('#sentence').val();
            return english != '' && chinese != '' && sentence != '';
        }
    </script>
</head>
<body>
<h1>Word Add Page</h1>

<form action="${ctx}/word/add" method="post" onsubmit="return check()">
    ENGLISH: <input id="english" name="english"><br>
    CHINESE: <input id="chinese" name="chinese"><br>
    SENTENCE: <input id="sentence" name="sentence"><br>
    <input type="submit" value="ADD">
</form>
</body>
</html>