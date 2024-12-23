
<%@ page import="java.sql.*"%>

<%

String EMAIL=request.getParameter("c");
String PASSWORD=request.getParameter("pass");


try{
    Connection con=null;
    Class.forName("oracle.jdbc.driver.OracleDriver");
    con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","lohitha");
    PreparedStatement ps=con.prepareStatement("select * from booking where Email=? and Password=?");
    ps.setString(1,EMAIL);
    ps.setString(2,PASSWORD);
    ResultSet x=ps.executeQuery();
	if(PASSWORD.equals("lohitha") && EMAIL.equals("bekkamlohithashri@gmail.com"))
   {
    response.sendRedirect("admin.html");
   }
     if(x.next()){
         out.print("login Sucessfully Completed....");
         response.sendRedirect("districts.html");
    }
	else{
         out.print("login not Sucessfully Completed....");
         out.print("USERID and PASSWORD are incorrect");
    }
       

}catch(Exception e){
    out.print(e);
}
%>
