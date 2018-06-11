<%@ page import="com.kumlali.sample.util.Calculator" %>
<html>
<body>
<h2>sample-webapp</h2>
<%
  Calculator calc = new Calculator ();
%>
7 + 3 = <%=calc.sum (7, 3) %>
<br>7 - 3 = <%= calc.subtract (7, 3) %>
<br>7 * 3 = <%= calc.multiply (7, 3) %>
<br>7 / 3 = <%= calc.divide (7, 3) %>
</body>
</html>
