<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#buttonSubmit").on("click", function(){
			$.ajax({ 
				url:'./ajaxServer.jsp', 
				type:'post',
				data:{nickName:'멍멍이'}, // 여기까지 서버쪽으로 데이터를 보내는 정보
				dataType:'json',
				success:function(data){ // 여기서 data는 매개변수라서 아무 이름이나 상관 없음. 
										// Server쪽에 있는 객체{"nickName":"멍멍이"}를 통으로 받는 것임.
					console.log("요청성공");
					console.log(data.nickName);
					$("#nickname").text(data.nickName);
				}
			});
		});
	});
</script>
</head>
<body>
	<input id="buttonSubmit" type="button" value="제출">
	<p id="nickname"></p>
	<p> ajax 통신 성공 </p>
</body>
</html>