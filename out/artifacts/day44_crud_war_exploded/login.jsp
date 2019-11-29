<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
    <script src="/js/jquery-3.3.1.js" type="text/javascript"></script>
</head>
<body>
<form action="/sys/user/login" method="post">
    <label for="account">账号：</label>
    <input id="account" type="text" name="account">
    <label for="account" style="color: red">${accountMessage}</label><br>
    <label for="password">密码：</label>
    <input id="password" type="password" name="password">
    <label for="password" style="color: red">${passwordMessage}</label><br>
    <input type="submit" value="登录">
</form>
</body>
</html>
