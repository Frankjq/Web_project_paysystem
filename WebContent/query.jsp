<%@ page language="java" import="java.util.*" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<%try{
String query=request.getParameter("query");
String email=request.getParameter("email");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:projetpay","accountant","1994");

PreparedStatement ps=con.prepareStatement("INSERT INTO QUERY  VALUES (?, ?)");
ps.setString(1,query);
ps.setString(2,email);
ps.executeUpdate();

}catch(Exception e){e.printStackTrace();}
%>
<jsp:forward page="contactus.jsp"></jsp:forward>