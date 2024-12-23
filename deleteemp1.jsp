
<%@ page import="java.sql.*"%>

<%

String EMAIL=request.getParameter("c");


try{
    Connection con=null;
    Class.forName("oracle.jdbc.driver.OracleDriver");
    con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","lohitha","lohitha");
    PreparedStatement ps=con.prepareStatement("delete from booking where EMAIL=?");
    ps.setString(1,EMAIL);
	out.println("connection sucess");
    ResultSet x=ps.executeQuery();
    if(x.next()){
        out.print("login Sucessfully Completed....");
        response.sendRedirect("fetch.jsp");
    }else{
        out.print("login not Sucessfully Completed....");
        out.print("USERID and PASSWORD are incorrect");
    }
       

}catch(Exception e){
    out.print(e);
}
%>

