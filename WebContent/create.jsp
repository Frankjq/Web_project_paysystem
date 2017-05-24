<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<html>

<title>Create</title>


<div id="outer">
<jsp:include page="aheader_logout.jsp"></jsp:include>


<div id="main">

<h3 style="color: navy;" align="center"><B>Create new accountant</B></h3>
<div id="box">

<form name="myform" action="asave.jsp">
<table>
<tr><td>Branch:</td><td><select  style="width:150px;" name="branch" id="select">
					<option>Select a Branch</option>
					<option>Accountant</option>
					<option>Company</option>
					<option>Student</option>
					</select></td></tr>
					<tr><td><br></td></tr>
<tr><td>Username:</td><td><input style="width:150px;" type="text" name="username"/></td></tr>
	<tr><td><br></td></tr>
	
<tr><td>Password:</td><td><input style="width:150px;" type="password" name="userpass"/></td></tr>
	<tr><td><br></td></tr>
<tr><td>Date of Joining:</td><td><input style="width:150px;"  type="text" name="doj"/></td></tr>
	<tr><td><br></td></tr>
<tr><td>Date of Birth:</td><td><input  style="width:150px;" type="text" name="dob"/></td></tr>
	<tr><td><br></td></tr>
	<tr><td>Salary:</td><td><input style="width:150px;"  type="text" name="salary"/></td></tr>
	<tr><td><br></td></tr>
		<tr><td></td><td><input type="submit" value="create" style="padding: 2"></td></tr>
	<tr><td><br></td></tr>
</table>
<div id="location" align="left"></div>
</form>

</div>

</div>




<jsp:include page="footer.jsp"></jsp:include>

</div>

</html>
