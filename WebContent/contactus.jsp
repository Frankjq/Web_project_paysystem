<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact Us</title>
</head>

<body>
<div id="outer">

<jsp:include page="header_normal.jsp"></jsp:include>


<Font style="color: navy;" size="4">Contact Us:</Font>
<form method="post" name="myform" id="myform" action="query.jsp">
<table width="100%">
<tr>
<td>
<table width="55%" align="left" >
<tr><td><img src="images/pic01.jpg"/></td>
<td><Font style="color: navy;" size="3"><B>Your Query:</B></Font><br>

<textarea name="query" style="width: 600px; height:80px"></textarea><br>
<Font style="color: navy;" size="2"><B>Email:</B></Font><input type="text" name="email" style="width: 180px; "/>
<input type="submit" value="submit" style="padding: 2px 2px" >
</td>
</tr>
</table>
</td>
<td>
<table align="right" >
<tr align="left"><td><Font style="color: navy;" size="3">Phone No.:123456789</Font><br>
<Font style="color: navy;" size="3">Email id:123@gmail.com</Font><br>
<Font style="color: navy;" size="3">Contact Person:Frank</Font>
</td></tr>
</table>
</td>
</tr>

</table>
</form>


<jsp:include page="footer.jsp"></jsp:include>
</div>
</body>
</html>