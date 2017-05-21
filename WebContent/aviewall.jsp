<%@ page language="java" import="java.util.*" import="java.sql.*"   contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<%
String n=request.getParameter("val");
if(n.length()>0){
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:projetpay","accountant","1994");

PreparedStatement ps=con.prepareStatement("select * from  accountant where user_id ='"+n+"'");

//ps.setString(1,n);
ResultSet rs=ps.executeQuery();
out.print("<br>");
out.print("<table align='center' border='5' cellspacing=5 cellpadding=2>");
out.print("<tr><td><a href='#' name='ID' onmouseover='javascript:viewAllInfo(this.name)'><B>ID</B></a></td><td><B>User name</B></td><td><B>Password</B></td><td><B>Date of joining</B></td><td><B>Date of Birth</B></td><td><B>Salary</B></td><td><B>Remove</B></td></tr>");
while(rs.next()){
out.print("<tr><td><a href='#' name='"+rs.getString(7)+"' onmouseover='javascript:viewAllInfo(this.name)'>"+rs.getString(7)+"</a></td>");
out.print("<td>"+rs.getString(1)+"</td>");
out.print("<td>"+rs.getString(2)+"</td>");
out.print("<td>"+rs.getString(4)+"</td>");
out.print("<td>"+rs.getString(5)+"</td>");
out.print("<td>"+rs.getString(6)+"</td>");
out.print("<td><a href='aremove.jsp?val="+rs.getString(7)+"' name='"+rs.getString(7)+"'>Delete</a></td>");
out.print("</tr>");
}
out.print("</table>");
con.close();
}catch(Exception e){e.printStackTrace();}
}//end of if
%>