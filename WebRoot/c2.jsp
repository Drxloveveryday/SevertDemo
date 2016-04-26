<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:useBean id="userinfo" class="edu.cc.bean.exampleBean" scope="page"></jsp:useBean>
<jsp:setProperty name="userinfo" property="content" param="Content"/>
<jsp:setProperty name="userinfo" property="choice" param="Choice"/>
<html>
  <head>
  		<title>c2 c2</title>
  </head>
  <body>
   		<% String info=""; %>
   		<% 
   			String info1=userinfo.getContent();
   			if(info1.equals("cc"))
   				info="succeed to regist";
   			else
   				info="fail to regist,you get the repeated username";
   		%>
   		<jsp:forward page="c1.jsp">
   			<jsp:param name="Message" value="<%=info%>"/>
   		</jsp:forward>
  </body>
</html>
