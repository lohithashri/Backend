<%@ page import="java.sql.*"%>


<%
String NameOfHead=request.getParameter("name");
String NoOf=request.getParameter("noof");
String Sdate=request.getParameter("sdate");
String Mnum1=request.getParameter("m1");
String Mnum2=request.getParameter("m2");
String Email=request.getParameter("email");

	try{
		Class.forName("oracle.jdbc.OracleDriver");
		Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","lohitha","lohitha");
		PreparedStatement ps=conn.prepareStatement("insert into booking values(?,?,?,?,?,?,?)");
		ps.setString(1,NameOfHead);
		ps.setString(2,NoOf);
		ps.setString(3,Sdate);
		ps.setString(4,Mnum1);
		ps.setString(5,Mnum2);
		ps.setString(6,Email);
		int i=ps.executeUpdate();
		if(i!=0){
			out.println("booking is completed");
			response.sendRedirect("success.html");
		}
		else{
			out.println("once again please check the information");
		}
	}
	catch(Exception e){
		out.print(e);
	}
%>