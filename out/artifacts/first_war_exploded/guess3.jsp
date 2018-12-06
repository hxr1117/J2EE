<%@ page import="java.io.*,java.util.*"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="content-type" content="text/html">
  <title>猜数游戏</title>
  <style>
    .top{
      margin-top:20px;
    }
  </style>
</head>

<body>
  <h1>猜数游戏</h1>
  <hr>
  <%
      try {
          Integer input = Integer.parseInt(request.getParameter("input"));
          Integer number = (Integer) session.getAttribute("number");
          if(input == number){
              out.print("猜对了！");
              int numberValue = (int) (Math.random() * 101);
              session.setAttribute("number", numberValue);
          }
          else if (input > 100 || input < 0){
              out.print("请输入0-100以内的数");
          }
          else if(input > number){
              out.print("大了");
              out.print(number);
          }
          else if(input < number){
              out.print("小了");
              out.print(number);
          }
      }
      catch (Exception e) {
          out.print("请输入数字");
      }
  %>
  <br>
  <a href='guess2.jsp'>再来一次...</a>
</body>

</html>