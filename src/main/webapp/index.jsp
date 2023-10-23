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
			<h2>도서관리 프로그램</h2>
			<p>도서관리 프로그램의 데이터베이스를 구축하고 관리하는 프로그램을 작성한다.</p>
			<p>프로그램 작성 순서</p>
			<p>1. 데이터베이스 테이블을 생성한다.</p>
			<p>2. 데이터베이스 테이블에 데이터를 생성한다.</p>
			<p>3. 프로그램을 작성한다.</p>
		</section>
		<footer><h3>HRDKOREA Copyright©2023</h3></footer>
	</div>
</body>
</html>