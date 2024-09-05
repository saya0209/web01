<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>일반 게시판 리스트</title>
	<style type="text/css">
		table{
			margin:0 auto;
			width: 800px;
		}
		th, td{
		/* 색상지정 
			1. 색상이름: black white
			2. RGB 16진수 #FFFFFF 255 255 255
				   16진수 #FFF	 15  15  15
		*/
			border: 1px solid #888;
			padding: 5px;
		}
		th{
			background: black;
			color: white;
		}
		.dateRow:hover{
			background: #ddd;
			cursor: pointer;
		}
		button:hover{
			cursor: pointer;	
		}
	</style>
</head>
<body>
<!-- 테이블로 제작 -->
<table>
	<!-- tr : table row - table 한줄 -->
	<tr><th colspan="5"><h1>일반게시판 리스트</h1></th></tr>
	<tr>
	<th>번호</th>
	<th>제목</th>
	<th>작성자</th>
	<th>작성일</th>
	<th>조회수</th>
	</tr>
	<tr onclick="location='view.jsp'" class="dataRow">
		<td>10</td>
		<td>자바란?</td>
		<td>홍길동</td>
		<td>2024.07.30</td>
		<td>15</td>
	</tr>
	
	<tr onclick="location='view.jsp'" class="dataRow">
		<td>9</td>
		<td>오라클</td>
		<td>관리자</td>
		<td>2024.07.28</td>
		<td>21</td>
	</tr>
	<tr>
		<td colspan="5">
		<a href="writeForm.jsp"><button>게시글 등록</button></a>
		<a href="updateForm.jsp"><button>게시글 수정</button></a>
		</td>
	</tr>

</table>
</body>
</html>