<%@ page import="java.io.*,java.util.*"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
  if(session.getAttribute("number") == null)
  {
    int numberValue = (int) (Math.random() * 101);
    session.setAttribute("number", numberValue);
  }
%>
<!DOCTYPE html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="content-type" content="text/html">
  <title>猜数游戏</title>
</head>
<body>
  <h1>猜数游戏</h1>
  <hr>
  <br>
  <form method='post' action='guess3.jsp'>
    <input type='text' name='input'>
    <input type='submit' value='猜数'>
    <input type='reset' value='重置'>
  </form>
</body>
