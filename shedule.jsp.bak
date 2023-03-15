<html>
<head>
</head>
<body bgcolor="#f09970">
<%@ page import="java.sql.*" %>
<h1><center>Welcome Administrator</center></h1>
<br>
<br>
<br>
<a href="./sp.jsp">Back</a>
<a href="./logout.jsp">Logout</a>
<br>
<br>
<br>
<%
String str=request.getParameter("pid");
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:health","health","health");
%>
<form name="f1" action="shedu.jsp" method="post">
<p>
<table align="right">
<tr>
<th colspan="2"><h3><font align=left>Doctor Visit Shedule</font></h3>
</tr>
<tr>
<td>
Date to Visit:
<td>
<select name="date">
<%
java.util.Date jd=new java.util.Date();
int date=jd.getDate();
int mm=jd.getMonth();
int year=jd.getYear()+1900;
mm=mm+1;
for(int i=1;i<32;i++)
out.println("<option>"+Integer.toString(i));
%>
</select>
<select name="month">
<option><%out.println(Integer.toString(mm));%>
<option><%out.println(Integer.toString(mm+1));%>
</select>
<select name="year">
<option><%out.println(Integer.toString(year));%>
</select>
&nbsp;dd-mm-yy
</input>
</tr>
<tr>
<td>Doctor id:
<td><select name="did">
<%
session.setAttribute("pid",request.getParameter("pid"));
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from doctor_details");
while(rs.next())
{
out.println("<option>"+rs.getString(1));
}
con.close();
%>
</select>
</tr>
<tr>
<td>&nbsp;
</tr>
<tr>
<td>
<td><input type="submit" value="shedule">
</tr>
</table>
</p>
</form>

</body>
</html>
