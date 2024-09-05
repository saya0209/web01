<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>일반 게시판 글보기</title>
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
<table>
	<tr>
		<th colspan="2">
		<h1>일반게시판 글보기</h1>
		</th>
	</tr>
	<tr>
		<th>번호</th>
		<td>10</td>
	</tr>
	<tr>
		<th>제목</th>
		<td>자바란?</td>
	</tr>
	<tr>
		<th>내용</th>
		<td>프로그래밍 언어입니다.</td>
	</tr>
	<tr>
		<th>작성자</th>
		<td>홍길동</td>
	</tr>
	<tr>
		<th>작성일</th>
		<td>2024.07.30</td>
	</tr>
	<tr>
		<th>조회수</th>
		<td>15</td>
	</tr>
	<tr>
		<td colspan="2">
			<a href="updateForm.jsp"><button>수정</button></a>
			<button>삭제</button>	
			<a href="list.jsp"><button>리스트</button></a>	
			<!-- 삭제시 비밀번호 입력을 위한 form태그 사용 -->
			<form action="delete.jsp" method="post">
				<input type="hidden" name="no" value="10" >
				<!-- required - 반드시 작성되어야 한다, {3,20} 최소3글자 최대20글자  -->
				<!-- ^에서 시작 $에서 끝, .은 \n 빼고 전부 다 사용 가능 -->
				<!-- title은 튤팁 -->
				<input name="pw" required maxlength="20" pattern="^.{3,20}$" title="3~20자 입력 가능" placeholder="본인 확인용 비밀번호">
				<button>삭제</button>
			</form>
		</td>
	</tr>

	
</table>
</body>
</html>