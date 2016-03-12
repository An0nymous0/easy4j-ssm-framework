<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: An0nymous
  Date: 16/3/12
  Time: 上午11:01
  To change this template use File | Settings | File Templates.
--%>
<!doctype html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>Demo</title>
    <link rel="stylesheet" type="text/css" href="framework/Semantic-UI/semantic.min.css">
    <link rel="stylesheet" type="text/css" href="framework/laypage/skin/laypage.css">
</head>
<body>
人员列表:
<table class="ui fixed single line celled table">
    <thead>
    <tr>
        <th>主键</th>
        <th>姓名</th>
        <th>手机号</th>
        <th>邮箱</th>
        <th>城市</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="demo" items="${demoList}">
        <tr>
            <td>${demo.id}</td>
            <td>${demo.name}</td>
            <td>${demo.phone}</td>
            <td>${demo.email}</td>
            <td>${demo.city}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<div id="laypage"></div>
</body>
<script src="js/jquery-2.2.1.min.js"></script>
<script src="framework/Semantic-UI/semantic.min.js"></script>
<script src="framework/laypage/laypage.js"></script>
<script>
    //好像很实用的样子，后端的同学再也不用写分页逻辑了。
    laypage({
        cont: 'laypage',
        pages: ${page.pages}, //总页数
        curr: ${page.pageNum}, //当前页
        skip: true, //开启跳页
        skin: 'molv',
        jump: function(e, first){ //触发分页后的回调
            if(!first){ //一定要加此判断，否则初始时会无限刷新
                location.href = '?page='+e.curr;
            }
        }
    });
</script>
</html>
