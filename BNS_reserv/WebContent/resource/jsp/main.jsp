<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resource/css/main.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resource/css/bootstrap/bootstrap.min.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>


</head>

<body>

	<video autoplay loop id="intro_video" muted>
		<source
			src="${pageContext.request.contextPath}/resource/assets/video/vi2.mp4"
			type="video/mp4">
	</video>


	<div class="container">
		<h1>Blade and Soul</h1>
		<p>Welcome to BNS BUS reservation guide</p>
		<br><br>
		<form action="${pageContext.request.contextPath}/servlet/KakaoServ"
			method="post" id="kakao-login">
				<div class="bnsid" id="bnsid">
			
				<div class="insert_bnsid">
				<p class="p"> Blade & Soul ���� </p>
				<p class="p"> ������ ����ϴ� �г����� �Է����ּ���.</p>
				<p class="p"> �г��� ������ ���� �ѹ��� ����˴ϴ�. </p>
				<p class="p">�����ϰ� �Է����ּ���.</p>
				<br>
				<a style="color:#fff">ID)</a>&nbsp; 
				<input type="text"  id="bns_id" name="bns_id" placeholder="���̵� �Է¶�" />
				<input type="button" id="ck_bns_id" value="�ߺ�üũ"/><br><br>
				
				<div id="no_match_id" style="display: none;">
				<input type="text" id="notfound_id" value="���̵� ã�� �� �����ϴ�. �ٽ� Ȯ�����ּ���." readonly="readonly"/>
				</div>
				
				
				<br><br>
				<input type="button" id="determine_bns_id" name="determine_bns_id" value="Ȯ��" />
				 </div>
				
			</div>
			<div class="kakao">
				<input type="hidden" name="action" value="kakao-login" /> 
				<a id="kakao-login-btn"></a>

				<a href="http://developers.kakao.com/logout"></a>
				
				<input type="hidden"
					id="id" name="id" value="0"> <input type="hidden"
					id="email" name="email" value="0"> <input type="hidden"
					id="nickname" name="nickname" value="0"> <input type="hidden"
					id="access_token" name="access_token" value="0"> <input type="hidden"
					id="log_count" name="log_count" value="0">

			</div>
		</form>
		 <br> <br> <input type="button" class="login_other"
			id="login_other" name="login_other" value="�ٸ� īī���� �������� �α���"
			onClick="loginForm();"> <br> <br>
 	

	</div>
<script
	src="${pageContext.request.contextPath}/resource/js/main.js"></script>
</body>
			
</html>