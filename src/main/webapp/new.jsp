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
	
	table tr{
		text-align: center;
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
			<h2>도서대출등록</h2>
			
			<% 
				Class.forName("oracle.jdbc.OracleDriver");
				Connection con=DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
				PreparedStatement pstmt=con.prepareStatement("select max(lentno)+1 from reservation_tbl");
				ResultSet rs = pstmt.executeQuery();
				rs.next();
				
				PreparedStatement bookinfo=con.prepareStatement("select * from bookinfo_tbl");
				ResultSet bookrs = bookinfo.executeQuery();
			%>

			<form method="GET" action="./new-server.jsp">
				<table  border="1">
					<tr><th>대출번호</th><td><input name="lentno" value="<%=rs.getString(1) %>" required readonly></td></tr>
					<tr><th>고객성명</th><td><input name="custname" required></td></tr>
					<tr><th>도서코드</th><td>
						<select name="bookno" required>
							<%
							  while(bookrs.next()){
								%>
								<option value="<%=bookrs.getString(1) %>"><%=bookrs.getString(3) %></option>
							<%  
							  };
							%>
						</select>
					</td></tr>
					<tr><th>대출일자</th><td><input name="outdate" required></td></tr>
					<tr><th>반납일자</th><td><input name="indate" required></td></tr>
					<tr><th>대출상태</th><td><input name="status" type="radio" value="1" checked required>대출 <input name="status" type="radio" value="2">반납</td></tr>
					<tr><td colspan=2><input type="submit" value="입력"> 
					<input type="button" value=" 조회 " onclick="location.href='./student.jsp'">
				</table>	
			</form>
		</section>
		<footer><h3>HRDKOREA Copyright©2023</h3></footer>
	</div>
</body>
</html>