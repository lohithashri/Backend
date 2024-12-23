<%@page import="java.sql.*"%>
<%
String email=request.getParameter("email");
%>
<HTML>
       <HEAD>
       <TITLE>The View Of Database Table</TITLE>
       </HEAD>
       <BODY BGCOLOR="white">
     
<%

try{

			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","lohitha","lohitha");
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from register");
%>



<table  border="1" align="center" style="table-layout:fixed;width:60%;border:1px solid black;">
<tr>
<th bgcolor="pink">Name of the Head</th>
<th bgcolor="pink">No of Members</th>
<th bgcolor="pink">Starting date</th>
<th bgcolor="pink">Mobile number 1</th>
<th bgcolor="pink">Mobile number 2</th>
<th bgcolor="pink">email</th>
<th bgcolor="pink">Password</th>
</tr>
<%
                       while(rs.next()){
                     if(rs.getString(6).equals(email))
                  {
%>
<tr>
<td bgcolor="blue"><%=rs.getString(1)%></td>
<td bgcolor="blue"><%=rs.getString(2)%></td>
<td bgcolor="blue"><%=rs.getString(3)%></td>
<td bgcolor="blue"><%=rs.getString(4)%></td>
<td bgcolor="blue"><%=rs.getString(5)%></td>
<td bgcolor="blue"><%=rs.getString(6)%></td>
<td bgcolor="blue"><%=rs.getString(7)%></td>

</tr>
</html>

<%
}
}
%>
<p style="text-align:center;color:white;text-indent:70px;">			  
<a href="admin.html"><%out.println("goto admin page");%></a>
</p>
<%
}
catch(Exception e)
{
out.print(e);
}
%>