<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>일반 게시판 글 등록 폼</title>
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
		input, select, textarea, button{
			padding: 5px;
		}
		.textInput{
			width: 98%;
		}
		input, select, textarea{
			background: #ccc;
		}
		input:focus, select:focus, textarea:focus{
			background: #fff;
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
	<hr>
	<!--  get방식 url에 데이터를 붙여서 보내는 방식 -->
	<!--  post방식 데이터 넘시는 부분(body)에 포함시켜서 넘기는 방식 -->
	<form action="write.jsp" method="post">
		<table>
			<tr>
				<th colspan="2">					
					<h1>일반 게시판 글 등록 폼</h1>
				</th>
			</tr>
			<tr>
				<th>제목</th>
				<td>
					<!-- ic, calss는 css, javascript에서 사용하려고 지정, name은 값을 전달할때 사용하려고 지정 -->
					<!-- [^ .] : 공백은 쓸 수 없고, 모든글자를 쓸 수 있다. -->
					<input id="title" name="title" required class="textInput" maxlength="100" pattern="^.[^ .].{2,99}$" 
					title="맨앞 공백문자 불가, 3~100자 입력" placeholder="제목입력: 3자 이상 100자 이내">	
				</td>
			</tr>
			<tr>
				<th>내용</th>
				<td>
					<textarea rows="7" class="textInput" id="content" name="content" required="required" placeholder="첫글자는 공백문자나 줄바꿈을 입력할 수 없습니다"	
					></textarea>
				</td>
			</tr>
			<tr>
				<th>작성자</th>
				<td>
					<!--  [a-zA-Z가-힣] 알파벳 대소문자, 한글 사용가능 -->
					<input id="writer" name="writer" required class="textInput" maxlength="10" pattern="^[a-zA-Z가-힣]{2,10}$" 
					title="한글과 영어만 입력, 2~10글자" placeholder="이름은 영어와 한글만 가능">	
				</td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td>
					<input id="pw" name="pw" class="textInput" required maxlength="20" pattern="^.{3,20}$" title="3~20자 입력 가능" placeholder="비밀번호를 입력하세요">
				</td>
			</tr>
			<tr>
				<th>비밀번호 확인</th>
				<td>
					<input id="pw2" class="textInput" required maxlength="20" pattern="^.{3,20}$" title="3~20자 입력 가능" placeholder="비밀번호확인을 입력하세요">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<button>등록</button>			<!-- submit = action에 적힌 페이지로 데이터가 전달 -->
					<button type="reset">다시입력</button>		<!-- reset = 적힌 내용을 전부 클리어 -->
					<button type="button" onclick="history.back()">취소</button>		<!--  -->				
				</td>
			</tr>
		</table>
	</form>
</body>
</html>