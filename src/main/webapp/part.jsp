<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>       
   
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>도서관리 프로그램</title>
	<style>
	*{margin:0;padding: 0}
	a{color: inherit;text-decoration: none}
	.wrap  {width:1000px;margin: 0 auto;}
	header {width: 100%;height: 70px;background: #00F;color: #FFF;text-align: center;line-height: 70px;}
	nav    {width: 100%;height: 40px;background: #AAF;color: #FFF;line-height: 40px;}
	section{width: 100%;height: 370px;background: #FFF;}
	footer {width: 100%;height: 40px;background: #00F;color: #FFF;text-align: center;line-height: 40px;}
	nav a  {margin-left: 33px;}
	h2     {padding: 22px;text-align: center;}
	p      {padding-left: 11px;}
	form   {width: 70%; margin: 0 auto;}
	form table {
		width: 100%;
	}
	table a{
		text-decoration: underline;
	}
	</style>
</head>
<body>
	<div class="wrap">
		<header><h1>도서관리 프로그램</h1></header>
		<nav>
			<a href="new.jsp">도서대출등록</a>    
			<a href="student.jsp">도서대출조회/수정</a>    
			<a href="part.jsp">미납도서조회/수정</a>
			<a href="index.jsp">홈으로</a>
		</nav>
		<section>
			<h2>미납도서 조회</h2>
			<table  border="1" style="margin-left: auto; margin-right: auto; text-align: center;">
				<tr>
					<th>대출번호</th>
					<th>고객성명</th>
					<th>도서이름</th>
					<th>대출일자</th>
					<th>반납일자</th>
					<th>대출상태</th>
					<th>변경</th>
				</tr>
				<%
					Class.forName("oracle.jdbc.OracleDriver");
					Connection con=DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
					PreparedStatement pstmt=con.prepareStatement("select * from reservation_tbl A, bookinfo_tbl B WHERE A.bookno = B.bookno");
					ResultSet rs = pstmt.executeQuery();
					
					while(rs.next()){
						if(rs.getInt(6)==1&&rs.getString(5) == null){
				%>	
						<tr>
							<td><%=rs.getString(1) %></td>
							<td><%=rs.getString(2) %></td>
							<td><%=rs.getString(9) %></td>
							<td><%=rs.getString(4).substring(0,11) %></td>
							<td><%=rs.getString(5) != null?rs.getString(5).substring(0,11):"" %></td>
							<td><%=rs.getInt(6)==1?"대출":"반납" %></td>
							<td><a href="./edit.jsp?lentno=<%=rs.getString(1) %>">변경</a></td>
							
						</tr>
				<% }
				}
				%>	
			</table>
		</section>
		<footer><h3>HRDKOREA Copyright©2023</h3></footer>
	</div>
</body>
</html>