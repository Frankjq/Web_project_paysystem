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
			<div id="main">
			<table align="left">
			
			<tr align="center"><td style="color: navy;"><B>Notice</B></td></tr>
			<tr><td><div><marquee direction="up" width="300px" truespeed="truespeed" onmouseover="stop()" onmouseout="start()" style="color: red;">
																Welcome Administrator sir. please login.
															      </marquee></div></td></tr></table>
				  <div id="right">
					<div class="box">
					
   					<form method="post" action="admin_loginprocess.jsp" >
					<table>
					<tr><td style="color:navy;" ><B> Login Form</B></td></tr>
					<tr><td>          <br></td></tr>
					<tr><td>User Name:</td><td><input  style="width:120px;" type="text" name="username"/></td></tr>
					<tr><td><br></td></tr>
					<tr><td>Password: </td><td><input style="width:120px;"  type="password" name="userpass"/></td></tr>	
					<tr><td><br></td></tr>
					<tr><td>           </td><td><input type="submit" value="Sign in"></td></tr>
					
					</table>
					</form>		
					
					</div>
				</div><br class="clear" />
			</div>		
			
<jsp:include page="footer.jsp"></jsp:include>

</div>


</body>
</html>