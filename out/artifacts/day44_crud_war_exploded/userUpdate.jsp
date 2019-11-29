<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>updateUser</title>
</head>
<body>
<form action="/sys/user/update" method="post">
    <input type="text" name="id" value="${id}" style="display: none">
    <label for="account">账号：</label>
    <input id="account" type="text" name="account" value="${account}" readonly="readonly"><br>
    <label for="password">密码：</label>
    <input id="password" type="password" name="password" value="${password}"><br>
    <label for="name">姓名：</label>
    <input id="name" type="text" name="name" value="${name}"><br>
    <label for="age">年龄：</label>
    <input id="age" type="number" name="age" value="${age}"><br>
    <label>性别：</label>
    <input type="radio" name="gender" value="1" <c:if test="${gender==1}">checked="checked"</c:if> >男
    <input type="radio" name="gender" value="0" <c:if test="${gender==0}">checked="checked"</c:if> >女<br>
    <label for="email">邮箱：</label>
    <input id="email" type="text" name="email" value="${email}"><br>
    <label for="birthday">生日：</label>
    <input id="birthday" type="text" name="birthday" value="${birthday}"><br>
    <input type="text" name="currentAccount" value="${currentAccount}" style="display: none">
    <input type="text" name="page" value="${page}" style="display: none">
    <input type="submit" value="提交">
</form>
</body>
</html>
