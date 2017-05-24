<%@ page language="java"  import="java.util.*"  contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
<html>
<head>
<title>search</title>
<script>
var request;
function sendInfo()
{
var v=document.myform.findName.value;
var url="findname.jsp?val="+v;
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

function viewAll(name)
{
var v=name;
var url="viewall.jsp?val="+v;
if(window.XMLHttpRequest){
request=new XMLHttpRequest();
}
else if(window.ActiveXObject){
request=new ActiveXObject("Microsoft.XMLHTTP");
}
try
{
request.onreadystatechange=getGenInfo;
request.open("GET",url,true);
request.send();
}
catch(e){alert("Unable to connect to server");}
}

function getAllInfo(){
	if(request.readyState==4){
	var val=request.responseText;
	document.getElementById('next').innerHTML=val;
	}
	}



function viewAllInfo(name)
{
var v=name;
var url="viewallinfo.jsp?val="+v;
if(window.XMLHttpRequest){
request=new XMLHttpRequest();
}
else if(window.ActiveXObject){
request=new ActiveXObject("Microsoft.XMLHTTP");
}
try
{
request.onreadystatechange=getGenInfo;
request.open("GET",url,true);
request.send();
}
catch(e){alert("Unable to connect to server");}
}

function getGenInfo(){
	if(request.readyState==4){
	var val=request.responseText;
	document.getElementById('bottom').innerHTML=val;
	}
	}
	
	

function sendGenInfo(name)
{
var v=name;
var url="gename.jsp?val="+v;
if(window.XMLHttpRequest){
request=new XMLHttpRequest();
}
else if(window.ActiveXObject){
request=new ActiveXObject("Microsoft.XMLHTTP");
}
try
{
request.onreadystatechange=getGenInfo;
request.open("GET",url,true);
request.send();
}
catch(e){alert("Unable to connect to server");}
}


</script>
</head>
<body>
<div id="outer">

<jsp:include page="header_logout.jsp"></jsp:include>


<%
String islogin=(String)session.getAttribute("islogin");
if(islogin==null){
request.setAttribute("notlogin_msg","Sorry,Please do Login first");
%>
<jsp:forward page="login_itf.jsp"></jsp:forward>
<%
}
%>




<h3 style="color: navy;" align="center"><B>Search student details</B></h3>
<div id="box"  align="center">

<form  name="myform" id="hello" method="post">
<table width="100%" >

	


	
	<table   align="center"  >
		<tr>
		<td><font style="color: navy;"><B>Search:</B></font><input type="text" name="findName" onkeyup="sendInfo()"></input></td>
		</tr>
	
	</table>
	
	
<div id="location" align="justify"  ></div>


<div id="next" align="justify"  ></div>
</table>


</form>

<div id="bottom" align="justify" ></div>
</div>

<jsp:include page="footer.jsp"></jsp:include>
</div>
</body>

</html>