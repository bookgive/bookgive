<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="bookgive.PersonalDonationBean"%>
<%@ page import="java.util.Date,java.io.*,java.util.Enumeration"%>
<jsp:useBean id="PD" class="bookgive.PersonalDonationMgrPool" />

<%
	request.setCharacterEncoding("EUC-KR");
	String id = (String) session.getAttribute("idKey");
	int personal_donation_id = Integer.parseInt(request.getParameter("personal_donation_id"));
	String nowPage = request.getParameter("nowPage");
	PersonalDonationBean bean = (PersonalDonationBean) session.getAttribute("bean");
	String title = bean.getTitle();
	String userID = bean.getUserID();
	String content = bean.getContent();
%>
<html>

<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<meta name="description" content="" />
<meta name="keywords" content="" />

<!-- Font -->

<!-- Icon -->
<script src="https://kit.fontawesome.com/e72d46677a.js"
	crossorigin="anonymous"></script>

<!-- Theme Style -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css?after"
	type="text/css">

<title>게시글 수정하기</title>
<script>
	function check() {
		if (document.updateFrm.pwd.value == "") {
			alert("수정을 위해 패스워드를 입력하세요.");
			document.updateFrm.pwd.focus();
			return false;
		}
		document.updateFrm.submit();
	}
</script>
</head>
<body>
	<nav>
		<div class="icon container" style="cursor: pointer;"
			onclick="location.href='logout.jsp';">
			<i class="fas fa-sign-out-alt"></i>
		</div>
		<%
			if (id != null) {
		%>
		<div align="right">
			<strong><%=id%></strong>님이 로그인 하셨습니다.&nbsp;&nbsp;
		</div>
		<%
			}
		%>

		<div class="mainLogo container">
			<div>
				<a href="bookgive.jsp"><p>책,</p>도움</a>
			</div>
		</div>
		<div class="menu container">
			<ul class="nav">
				<li><a href="bookgive.jsp">Home</a></li>
				<li><a href="agency_donation.jsp">기관기부</a></li>
				<li><a href="personal_donation.jsp">개인기부</a></li>
				<li><a href="about.jsp">About Us</a></li>
				<li><a href="contact.jsp">Contact</a></li>
			</ul>
		</div>
	</nav>
	<div>
		<div class="container">
			<div class="donation-read-box">
				<div id="donation-read-frm">
					<div class="donation-read-table-box radiooo">
						<p
							style="background: #fafaf0; font-weight: bold; font-size: 30px; color: #000;">수정하기</p>

						<form name="updateFrm" method="post" action="PDUpdate">
							<table width="100%;">
								<tr>
									<td>제 목</td>
									<td style="font-size: 15px;"><input name="title" size="50"
										value="<%=title%>" maxlength="50"></td>
								<tr>
									<td>내 용</td>
									<td style="font-size: 15px;"><textarea name="content" rows="10" cols="50"><%=content%></textarea>
									</td>
								</tr>
								<tr>
									<td>거래 상태</td>
									<td style="font-size: 15px;">
									<input type="radio" name="donation_state"
										value="false" checked="checked"> 진행중 &ensp; <input
										type="radio" name="donation_state" value="true"> 거래 완료</td>
								</tr>
								<tr>
									<td>비밀번호</td>
									<td style="font-size: 15px;"><input type="password" name="pwd" size="15"
										maxlength="15">&nbsp;수정 시에는 비밀번호가 필요합니다.</td>
								</tr>
								<tr>
									<td colspan="2" height="5"><hr /></td>
								</tr>
								<tr>
									<td colspan="2"><a style="color: #000000;" type="button" onClick="check()">[ 수정 완료 | 
									</a> <a style="color: #000000;" type="reset">다시 수정 | </a> <a style="color: #000000;" type="button"
										onClick="history.go(-1)">뒤로 ]</a></td>
								</tr>
							</table>
							<input type="hidden" name="userID" value="<%=userID%>" size="30"
								maxlength="20"> <input type="hidden" name="nowPage"
								value="<%=nowPage%>"> <input type='hidden'
								name="personal_donation_id" value="<%=personal_donation_id%>">
						</form>
					</div>
				</div>
			</div>
		</div>
		<footer>

			<div class="container">
				<div class="row mt-5 pt-5 align-items-center">
					<div class="col-md-6 text-md-left">
						<p>
							Copyright &copy;
							<script>
								document.write(new Date().getFullYear());
							</script>
							<a href="index.html">Book,give</a>. All Rights Reserved. Design
							by <a href="https://untree.co/" target="_blank"
								class="text-primary">Book,give</a>
						</p>
					</div>
				</div>
			</div>

		</footer>
</body>
</html>
