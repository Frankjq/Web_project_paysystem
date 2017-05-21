<%@ page language="java"  import="java.util.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>

<head>
<title>
		Admin Home
</title>
</head>
<body>

<div id="outer">

<jsp:include page="aheader_logout.jsp"></jsp:include>


<%
String islogin=(String)session.getAttribute("islogin");
if(islogin==null){
request.setAttribute("notlogin_msg","Sorry,Please do Login first");
%>
<jsp:forward page="login_itf.jsp"></jsp:forward>
<%
}
%>




<div id="main">


<h3 style="color:navy;" align="center"><B>Welcome to System</B></h3>



<%
if(request.getAttribute("msg")!=null){
String msg=(String)request.getAttribute("msg");
out.print("<font style='color: navy'><B>");
out.print(msg);
out.print("</B></font>");
}
%>
 			<table  align="center" >
			<tr align="center"><td style="color: navy;"><B>Notice</B></td></tr>
			<tr><td><div><marquee direction="up" width="300px" truespeed="truespeed" onmouseover="stop()" onmouseout="start()" style="color: red;">
																Welcome  Administrator.<br />
																You can create, update and delete accountant here!<br />
																you can search any info!<br />
															      </marquee></div></td></tr></table>

</div>


<jsp:include page="footer.jsp"></jsp:include>

</div>
</body>

</html>
