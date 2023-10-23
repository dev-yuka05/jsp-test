<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>  

     
<%

String lentno = request.getParameter("lentno");
String custname = request.getParameter("custname");
String bookno = request.getParameter("bookno");
String outdate = request.getParameter("outdate");
String indate = request.getParameter("indate");
String status = request.getParameter("status");

System.out.println("('"+lentno+"','"+custname+"','"+bookno+"','"+outdate+"','"+indate+"','"+status+"')");

String sql = "insert into reservation_tbl values('"+lentno+"','"+custname+"','"+bookno+"','"+outdate+"','"+indate+"','"+status+"')";

ResultSet rs = null;
try{
	Class.forName("oracle.jdbc.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
	PreparedStatement pstmt=con.prepareStatement(sql);
	rs=pstmt.executeQuery();
	out.println("<script>alert('완료');location.href='./';</script>");
}catch(Exception e){
	System.out.println(e);
	out.println("<script>alert('오류');history.back();</script>");
}
%>