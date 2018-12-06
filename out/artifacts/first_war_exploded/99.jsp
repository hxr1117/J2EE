<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*" %>
<head>
    <meta charset="UTF-8">
    <title>乘法表</title>
</head>
<body>
<h1>九九乘法表</h1>
<hr>
<table>
    <%
        int i, j;
        for(i = 1;i < 10; i++)
        {
            out.print("<tr>");
            for(j = 1;j <= i;j++)
            {
                out.print("<td style='width: 70px'>"+j+'*'+i+'='+i*j+" </td>");
            }
            out.print("</tr>");
        }
    %>
</table>
</body>
