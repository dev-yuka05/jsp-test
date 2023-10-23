<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>  

     
<%

String lentno = request.getParameter("lentno");
String custname = request.getParameter("custname");
String bookno = request.getParameter("bookno");
String outdate = request.getParameter("outdate");
String indate = request.getParameter("indate");
String status = request.getParameter("status");


String sql = "update reservation_tbl set custname='"+custname+"', bookno='"+bookno+"', outdate='"+outdate+"', indate='"+indate+"', status='"+status+"' where lentno="+lentno;

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