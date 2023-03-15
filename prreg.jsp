<html>
<head>
</head>
<body>

 <%@ page import="java.sql.*" %>
  <%
  try{
  String pid=request.getParameter("pid");
  String pn=request.getParameter("pname");
  String pwd=request.getParameter("pwd");
  String fname=request.getParameter("fname");  
  int no=Integer.parseInt(request.getParameter("age"));
  String add=request.getParameter("add");
  String prob=request.getParameter("prob");
  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
  Connection con=DriverManager.getConnection("jdbc:odbc:health","health","health");
  PreparedStatement pstm=con.prepareStatement("insert into patient_details values(?,?,?,?,?,?,?,?,?,?,?,?)");
  Statement stmt=con.createStatement();
  ResultSet rs=stmt.executeQuery("select * from patient_details");
  int count=0;
  while(rs.next())
	{count++;}
  pstm.setString(1,"PID"+Integer.toString(count+1));
  pstm.setString(2,pn);
  pstm.setString(3,pwd);
  pstm.setString(4,fname);
  pstm.setInt(5,no);
  pstm.setString(6,add);
  pstm.setString(7,prob);
  pstm.setString(8,"");
  pstm.setString(9,"false");
  pstm.setString(10,"");
  pstm.setString(11,"");
  pstm.setString(12,"");
  pstm.executeUpdate();
  pstm.close();
  con.close();
  response.sendRedirect("./success.html");
}
catch(Exception e)
{
out.println("Error"+e);
}
  %>
</body>
</html>