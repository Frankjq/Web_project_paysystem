<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome to Paying System!</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
<div id="outer">
<jsp:include page="header_normal.jsp"></jsp:include>
<% 
					if(request.getAttribute("notlogin_msg")!=null){
					out.print("<font size='2' color='red' m>");
					out.print(request.getAttribute("notlogin_msg"));
					out.print("</font>");
					}
					%>
							
				<% 
					if(request.getAttribute("Error")!=null){
					out.print("<font size='2' color='red' m>");
					out.print(request.getAttribute("Error"));
					out.print("</font>");
					}
					%>	

 			<table align="center">
			<tr align="center"><td style="color: navy;"><B>Notice</B></td></tr>
			<tr><td><div><marquee direction="up" width="300px" truespeed="truespeed" onmouseover="stop()" onmouseout="start()" style="color: red;">
																 Last Date of fee Submission is 5/10/2017
															     After that You'll have to pay 5000 a day!
															      </marquee></div></td></tr></table>

<jsp:include page="footer.jsp"></jsp:include>
</div>
</body>
</html>