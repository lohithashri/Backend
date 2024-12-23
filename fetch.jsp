<%@page import="java.sql.*"%>
<%
try{
 Class.forName("oracle.jdbc.driver.OracleDriver");
 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","lohitha","lohitha");
 
String sql="select * from booking";
PreparedStatement stmt=con.prepareStatement(sql);  
ResultSet rs=stmt.executeQuery();  

%>
<html>
<body bgcolor=black>
<table border=1 bgcolor=black width=1500>
<br>
<tr>
<td bgcolor=black colspan=8 ><center>
<img src="gif.gif" height=100 width=180 align=left>
<img src="volvo.gif" height=100 width=200 align=right>
<img src="title.jpg" height=100 width=1100 align=center>

</center><br></td>
</tr> </table>
<center>
<font color="green">
<h1><i>Welcome to User Details</i></h1>
</font>
<table border="3" bgcolor="white" width=1200 height=250>

<tr>

<th colspan="7" bgcolor="green" align="center"><font color="red" size=7><b>User Details</b></font></th></tr>
<tr>
<td><font color="red" size=5>Name of the Head</font></td>
<td><font color="red" size=5>No of members</font></td>
<td><font color="red" size=5>Starting Date</font></td>
<td><font color="red" size=5>Mobile Number 1</font></td>
<td><font color="red" size=5>Mobile Number 2</font></td>
<td><font color="red" size=5>Email Address</font></td>
<td><font color="red" size=5>Password</font></td>
</tr></font>
<%
while(rs.next())
{
%>
<tr>
<td><%=rs.getString(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getString(5)%></td>
<td><%=rs.getString(6)%></td>
<td><%=rs.getString(7)%></td>
</tr>
<%
}
%>
</table>
<br>
<br>
<A href="admin.html">
 <img src="back to home.jpg" height=100 width=500 align=right</A>
<% }
catch(Exception e)
{
 out.println(e.toString());
}
%>