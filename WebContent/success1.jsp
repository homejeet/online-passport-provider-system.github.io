<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1><font color="green">Thank you your Information has been received successfully !..</font></h1>
<%  
HttpSession ses=request.getSession(false);
String ll=(String)ses.getAttribute("ll");
out.println("from email id:"+ll);
%>
 <button onclick="window.location='user.jsp'"  class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent">
 ok
</button>
</body>
</html>