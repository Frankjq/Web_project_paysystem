<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<%
String n=request.getParameter("val");
if(n.length()>0){
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:projetpay","accountant","1994");

PreparedStatement ps=con.prepareStatement("delete from accountant where user_id ='"+n+"'");
ps.executeUpdate();
con.close();
request.setAttribute("msg","Record Has been Successfully Deleted");
}catch(Exception e){e.printStackTrace();}
}//end of if
%>
<jsp:forward page="asearch.jsp"></jsp:forward>