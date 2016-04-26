<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<title>test test</title>
	<script type="text/javascript">
		function checkContent(){
			var b=document.getElementById("Content1").value;
			if(b==''){
				alert("empty content");
				return false;
			}
			else	
				return true;
		}
		function message(){
			var result="<%=request.getParameter("Message")%>";
			if(result!=null&&result=="succeed to regist"){
				window.location.href="login.html?backurl="+window.location.href;
			}
			else{
				alert(result);
				}
		}
	</script>
  </head>
  
  <body onload="message();">
 	<form action="c2.jsp" onSubmit="return checkContent();" method="post">
 		<input type="text" id="Content1" name="Content"/>
 		<br>
 		<select name="Choice">
 			<option>student</option>
 			<option>teacher</option>
 		</select>
 		<>
 		<input type="submit" name="submit" value="确定">
 	</form>
  </body>
</html>
