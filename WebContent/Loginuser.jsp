<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import=" java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSet;" %>

<%response.setContentType("text/html");
PrintWriter outt=response.getWriter();
String driver="com.mysql.jdbc.Driver";
String url="jdbc:mysql://localhost:3306/company";
String user="root";
String password="1234";
String qry="select * from user3 where email=? and password=?";
String email;
String passworduser;
String email1;
String password1;
String name;
boolean status=false;
try{
	Class.forName(driver);
	Connection con=(Connection) DriverManager.getConnection(url,user,password);
	PreparedStatement stmt=(PreparedStatement) con.prepareStatement(qry);
	stmt.setString(1, request.getParameter("email"));
	stmt.setString(2, request.getParameter("password"));
	ResultSet rs=(ResultSet) stmt.executeQuery();
	/*boolean status=false;*/
	if(rs.next())	
	
		
		status=true;
		
		email1=request.getParameter("email");
	password1=request.getParameter("password");
		email=rs.getString(9);
		passworduser=rs.getString(7);
		name=rs.getString(2);
	
	



	
HttpSession ses=request.getSession();
 if(email.equals(email1) && passworduser.equals(password1))
{
	// Cookie ck=new Cookie("cname",email1);  
     //response.addCookie(ck);
     
	ses.setAttribute("user",name);
	ses.setAttribute("mailId", email1);
	RequestDispatcher rd=request.getRequestDispatcher("verifyaadhar.jsp");
	rd.forward(request, response);
	out.print("<font color='red'>***** Login Successful *****</font>");
}



	
	





}catch(Exception e)
{
  e.printStackTrace();	
} %>
 <jsp:include page='login.jsp'></jsp:include>
</body>
</html>