<%--
  Created by IntelliJ IDEA.
  User: hexinrong
  Date: 2018/11/24
  Time: 13:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="bean.GuessNum" %>
<html>
<head>
    <title>猜数游戏</title>
</head>
<body>
    <form>
        <h1>猜数游戏</h1>
        <hr>
        <br>
        <input type="text">
        <input type="button" value="猜数">
        <input type="reset" value="重置">
        <%
            GuessNum gn = new GuessNum();
            int num = gn.getNum();
        %>

    </form>
</body>
</html>
