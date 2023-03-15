<html>
<head>
</head>
<body bgcolor="#f09970">
<br>
<br>
<br>
<font align="right" size=3><a href="./AdminHome.jsp">Back</a></font>
<br>
<br>
<%@ page import="java.sql.*" %>
<form action="validatepatient2.jsp" method="post">
<%
String pid=(String)session.getAttribute("pid");
String pname=(String)session.getAttribute("pname");
String problem=(String)session.getAttribute("problem");
int age=Integer.parseInt((String)session.getAttribute("age"));
String cate=request.getParameter("cate");
String cone=request.getParameter("cone");
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:health","health","health");
PreparedStatement pstm=con.prepareStatement("insert into category_details values(?,?,?,?,?,?)");
pstm.setString(1,pid);
pstm.setString(2,pname);
pstm.setInt(3,age);
pstm.setString(4,problem);
pstm.setString(5,cate);
pstm.setString(6,cone);
pstm.executeUpdate();
con.commit();
con.close();

%>
<table align="center">
<tr>
<td>Patient ID:
<td><input type="text" name="pid" disabled="true" value=<%=pid%>>
</tr>
<tr>
<td>Patient Name:
<td><input type="text" name="pname" disabled="true" value=<%=pname%>>
</tr>
<tr>
<td>age:
<td><input type="text" name="age" disabled="true" value=<%=age%>>
</tr>
<tr>
<td>Problem:
<td><input type="text" name="problem" disabled="true" value=<%=problem%>>
</tr>
<tr>
<td>Category:
<td><input type="text" name="cate" disabled="true" value=<%=cate%>>
</tr>
<tr>
<td>Conession: (%)
<td><input type="text" name="cone" disabled="true" value=<%=cone%>>
</tr>
<tr>
<td>&nbsp;
<td colspan="2"><font color="blue"><h3>Patient Validated</h3></font>
</tr>
</table>
</form>
</body>
</html>