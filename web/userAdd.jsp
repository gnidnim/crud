<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>addUser</title>
</head>
<body>
<form action="/sys/user/add" method="post">
<label for="account">账号：</label>
<input id="account" type="text" name="account">
<label for="account" style="color: red">${accountMessage}</label><br>
<label for="password">密码：</label>
<input id="password" type="password" name="password"><br>
<label for="name">姓名：</label>
<input id="name" type="text" name="name"><br>
<label for="age">年龄：</label>
<input id="age" type="number" name="age"><br>
<label>性别：</label>
<input type="radio" name="gender" value="1">男
<input type="radio" name="gender" value="0">女<br>
<label for="email">邮箱：</label>
<input id="email" type="text" name="email"><br>
<label for="birthday">生日：</label>
<input id="birthday" type="date" name="birthday"><br>
<input type="submit" value="提交">
</form>
</body>
</html>
