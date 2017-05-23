<%@ page language="java" import="java.util.*"  contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Search</title>

<script>
var request;
function sendInfo()   //搜索页面传送数据到afindname
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

function getInfo(){    //服务器响应完成后将info信息调用到location
if(request.readyState==4){
var val=request.responseText;
document.getElementById('location').innerHTML=val;
}
}

function aviewAll(name)    	//被afindinfo调用viewall方法
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


function getAllInfo(){    //服务器响应完成后将allinfo信息调用到bottom
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

<div id="box"  align="center">

<form name="myform"  >

<table align="center" ><tr><td><font style="color: navy;">Branch:</font></td><td><select style="width:120px;" name="branch" id="select">
					<option>Select a Branch</option>
					<option>Accountant</option>
					<option>Company</option>
					<option>Student</option>
					</select></td></tr>
					<tr><td><br></td></tr>
<tr><td><font  style="color: navy;">Find:-</font></td><td><input style="width:120px;" type="text" align="right" name="findName" onkeyup="sendInfo()"></input></td></tr></table>


<div id="location"  align="justify"></div>
</form>

<div id="bottom" align="justify"></div>
<div id="getgeninfo" align="justify"></div>
</div>



<jsp:include page="footer.jsp"></jsp:include>
</div>
</body>
</html>