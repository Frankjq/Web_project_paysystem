<%@ page language="java" import="java.util.*"  contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Search</title>

<script>
var request;
function sendInfo()
{
var branch=document.myform.select.value;
var v=document.myform.findName.value;
var url="afindinfo.jsp?val="+v+"&branch="+branch;
if(window.XMLHttpRequest){
request=new XMLHttpRequest();
}
else if(window.ActiveXObject){
request=new ActiveXObject("Microsoft.XMLHTTP");
}
try
{
request.onreadystatechange=getInfo;
request.open("GET",url,true);
request.send();
}
catch(e){alert("Unable to connect to server");}
}

function getInfo(){
if(request.readyState==4){
var val=request.responseText;
document.getElementById('location').innerHTML=val;
}
}

function aviewAll(name)
{
var v=name;
var url="aviewall.jsp?val="+v;

if(window.XMLHttpRequest){
request=new XMLHttpRequest();
}
else if(window.ActiveXObject){
request=new ActiveXObject("Microsoft.XMLHTTP");
}

try
{
request.onreadystatechange=getAllInfo;
request.open("GET",url,true);
request.send();
}
catch(e){alert("Unable to connect to server");}
}


function getAllInfo(){
if(request.readyState==4){
var val=request.responseText;
document.getElementById('bottom').innerHTML=val;
}
}

</script>
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




<h3 style="color: navy;" align="center"><B>Search accountant details</B></h3>

<div id="box">

<form name="myform" >

<table align="center" ><tr><td><font style="color: navy;">Branch:</font></td><td><select name="branch" id="select">
					<option>Select a Branch</option>
					<option>Accountant</option>
					<option>Company</option>
					<option>Student</option>
					</select></td></tr>
					<tr><td><br></td></tr>
<tr><td><font style="color: navy;">Find:-</font></td><td><input type="text" align="right" name="findName" onkeyup="sendInfo()"></input></td></tr></table>
<div id="right" align="right">

</div>

<div id="location" align="center"></div>
</form>

<div id="bottom" align="justify"></div>
<div id="getgeninfo" align="justify"></div>
</div>



<jsp:include page="footer.jsp"></jsp:include>
</div>
</body>
</html>