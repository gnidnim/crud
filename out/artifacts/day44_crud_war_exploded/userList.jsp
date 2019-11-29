<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>list</title>
    <link rel="stylesheet" href="/static/bootstrap-3.3.7-dist/css/bootstrap.css">
    <script src="/static/js/jquery-3.3.1.js"></script>
    <script src="/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
</head>
<body>
<div class="container">
    <div class="container-fluid">
        <form action="/sys/user/list" method="post">
            <div class="text-center">
                <label for="account">账号:</label>
                <input id="account" type="text" class="text-center" name="account" value="${account}">
                <input type="submit" class="btn btn-info" value="查询">
                <a href="/userAdd.jsp" class="btn btn-success">添加</a>
            </div>
        </form>
        <table class="table table-bordered">
            <tr>
                <td></td>
                <td>账号</td>
                <td>密码</td>
                <td>姓名</td>
                <td>年龄</td>
                <td>性别</td>
                <td>邮箱</td>
                <td>生日</td>
                <td>创建时间</td>
                <td>操作</td>
            </tr>
            <c:forEach var="user" items="${users}" varStatus="status">
                <tr>
                    <td>${status.count}</td>
                    <td>${user.account}</td>
                    <td>${user.password}</td>
                    <td>${user.name}</td>
                    <td>${user.age}</td>
                    <td>
                        <c:if test="${user.gender==1}">男</c:if>
                        <c:if test="${user.gender==0}">女</c:if>
                    </td>
                    <td>${user.email}</td>
                    <td>
                        <fmt:parseDate var="birthday" value="${user.birthday}" pattern="yyyy-MM-dd"/>
                        <fmt:formatDate value="${birthday}" pattern="yyyy年MM月dd日"/>
                    </td>
                    <td>
                        <fmt:parseDate var="createTime" value="${user.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
                        <fmt:formatDate value="${createTime}" pattern="yyyy年MM月dd日 HH:mm:ss"/>
                    </td>
                    <td>
                        <a href="/sys/user/delete?id=${user.id}&account=${account}&page=${page.page}"
                           class="btn btn-danger">删除</a>
                        <a href="/sys/user/get?id=${user.id}&account=${account}&page=${page.page}"
                           class="btn btn-primary">修改</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <div class="text-center">
            <a href="/sys/user/list?page=1&account=${account}" class="btn btn-info">首页</a>
            <c:if test="${page.page!=1}">
                <a href="/sys/user/list?page=${page.page>1?page.page-1:page.page}&account=${account}"
                   class="btn btn-info">上一页</a>
            </c:if>
            <c:choose>
                <c:when test="${page.page<=5||page.pageTotal<=10}">
                    <c:forEach begin="1" end="${page.pageTotal<=10?page.pageTotal:10}" step="1" varStatus="status">
                        <a href="/sys/user/list?page=${status.index}&account=${account}" class="btn btn-info"
                                <c:if test="${page.page==status.index}"> disabled="disabled" </c:if>>${status.index}</a>
                    </c:forEach>
                </c:when>
                <c:when test="${(page.pageTotal-page.page<=4)&&page.pageTotal>10}">
                    <c:forEach begin="${page.pageTotal-9}" end="${page.pageTotal}" step="1" varStatus="status"
                               var="number">
                        <a href="/sys/user/list?page=${number}&account=${account}" class="btn btn-info"
                                <c:if test="${page.page==(number)}"> disabled="disabled" </c:if>
                        >${number}</a>
                    </c:forEach>
                </c:when>
                <c:otherwise>
                    <c:forEach begin="1" end="10" step="1" varStatus="status">
                        <a href="/sys/user/list?page=${page.page+status.index-6}&account=${account}"
                           class="btn btn-info"
                                <c:if test="${page.page==(page.page+status.index-6)}"> disabled="disabled" </c:if>
                        >${page.page+status.index-6}</a>
                    </c:forEach>
                </c:otherwise>
            </c:choose>
            <c:if test="${page.page!=page.pageTotal}">
                <a href="/sys/user/list?page=${page.page<page.pageTotal?page.page+1:page.page}&account=${account}"
                   class="btn btn-info">下一页</a>
            </c:if>
            <a href="/sys/user/list?page=${page.pageTotal}&account=${account}" class="btn btn-info">尾页</a>
            当前页：${page.page},共：${page.pageTotal} 页 ${page.count} 条数据
        </div>
    </div>
</div>
</body>
</html>
