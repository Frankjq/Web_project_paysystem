<%@ page language="java" import="java.sql.*"  import="java.util.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
String n=request.getParameter("val");
String branch=request.getParameter("branch");
if(n.length()>0){
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:projetpay","accountant","1994");

PreparedStatement ps=con.prepareStatement("select * from  accountant where branch='"+branch+"' and username like '%"+n+"%'");
//ps.setString(1,n);
out.print("<br>");
ResultSet rs=ps.executeQuery();

out.print("<table align='center' border='5' cellspacing=5 cellpadding=2 id='myTable'>");
out.print("<tr><td><a href='#' name='ID' onmouseover='javascript:viewAllInfo(this.name)'><B>ID</B></a></td><td><B>Name</B></td><td><B>Salary</B></td></tr>");
while(rs.next()){
out.print("<tr><td><a href='#' name='"+rs.getString(7)+"' onmouseover='javascript:aviewAll(this.name)'>"+rs.getString(7)+"</a></td>");
out.print("<td>"+rs.getString(1)+"</td>");
out.print("<td>"+rs.getString(6)+"</td>");
out.print("</tr>");
}
out.print("</table>");
con.close();
}catch(Exception e){e.printStackTrace();}
}//end of if
%>