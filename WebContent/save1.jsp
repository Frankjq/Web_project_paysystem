<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%-- <%@page import="org.apache.taglibs.standard.tag.common.fmt.SetBundleSupport"%>--%>
<%try{
System.out.print(request.getParameter("name"));
String id=request.getParameter("id");
out.println(id);
String name=request.getParameter("name");
String course=request.getParameter("course");
String mobile=request.getParameter("mobile");
String fathername=request.getParameter("fathername");
String mothername=request.getParameter("mothername");
String qualification=request.getParameter("qualification");
String dateofbirth=request.getParameter("dateofbirth");
String dateofjoining=request.getParameter("dateofjoining");
String datefeesub=request.getParameter("datefeesub");
String paid=request.getParameter("paid");
String fee=request.getParameter("fee");
String balance=request.getParameter("balance");
String address=request.getParameter("address");
String description=request.getParameter("description");
String trainer=request.getParameter("trainer");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:projetpay","accountant","1994");
PreparedStatement ps=con.prepareStatement("update student set name='"+name+"',course='"+course+"',mobile='"+mobile+"',address='"+address+"',trainer='"+trainer+"',description='"+description+"',dateofbirth='"+dateofbirth+"',dateofjoining='"+dateofjoining+"',qualification='"+qualification+"',datefeesub='"+datefeesub+"',fee='"+fee+"',paid='"+paid+"',balance='"+balance+"',fathername='"+fathername+"',mothername='"+mothername+"'  where id= '"+id+"'");

int s=ps.executeUpdate();
System.out.print(s);
}catch(SQLException e2){
e2.printStackTrace();
}
%>

<jsp:forward  page="modify.jsp"></jsp:forward>
