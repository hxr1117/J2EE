<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="bean.Counter"%>
<html>
<head>
    <title>计数器</title>
</head>
<body>
<h1>网站计数器</h1>
<hr>
    <%  Counter c = new Counter();
        String counter = c.read();
        long next = Long.valueOf(counter);
        next = next + 1;
        c.write(String.valueOf(next));
        String path = "/Digits/2/";
        String s = "" + next;
    %>
        您好，你是本站第 <%
        for(int i = 0; i <counter.length(); i ++){
    %><img src=<%=path+s.charAt(i)%>.GIF><%}%>个访问者。
</body>
</html>
