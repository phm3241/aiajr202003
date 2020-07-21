<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>LayOutTest</title>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/test.css" />
<style>
</style>
<script></script>
</head>


<body>

	<div id="container">
		<div id="header">
			<%--@ include file="/WEB-INF/views/include/header.jsp"--%>
			<!-- 로그인번호가 학생이면, -->
			<%-- <c:if test="${loginType != null}"> --%>

				<div id="mainInfo">
					<div id="logo">
						<img src="<%=request.getContextPath()%>/img/logo.png" />
					</div>
					<div class="myPageIcon">
						<img src="<%=request.getContextPath()%>/img/myPageIcon.png" />
						<h2> 김연아</h2>
						<h2>컴퓨터학과 1학년</h2>
						<%-- <h2>${student.sIdx}${student.name}</h2>
						<h2>${student.major}${student.grade}</h2> --%>
					</div>
					<div class="menuIcon">
						<img src="<%=request.getContextPath()%>/img/menuIcon.png" />
					</div>
				</div>

				<ul id="nav">
					<li><a href="<c:url value="/student/sClassAdd.do"/>"></a>수강신청</li>
					<li><a href="<c:url value="/student/sMyClass.do"/>">나의 강의실</a></li>
					<li><a href="<c:url value="/student/sInfo.do"/>">내정보</a></li>
				</ul>

			<%-- </c:if> --%>




			<!-- 로그인번호가 강사이면, -->
			<c:if test="${loginType == '교수'}">
				<div id="header">

					<div id="myMainInfo">
						<div class="logo">
							<img src="/img/logo.jpg" />
						</div>
						<div class="myPageIcon">
							<img src="/img/myPageIcon.jpg" />
							<h2>${teacher.tIdx}${teacher.name}</h2>
							<h2>${teacher.major}${teacher.job}</h2>
						</div>
						<div class="menuIcon">
							<img src="/img/menuIcon.jpg" />
						</div>
					</div>

					<ul id="nav">
						<li><a href="<c:url value="/teacher/tClassAdd.do"/>"></a>수강신청</li>
						<li><a href="<c:url value="/teacher/tMyClass.do"/>">나의
								강의실</a></li>
						<li><a href="<c:url value="/teacher/tInfo.do"/>">내정보</a></li>
					</ul>

				</div>
			</c:if>



			<!-- 로그인번호가 관리자이면, -->
			<c:if test="${loginType == '관리자'}">
				<div id="header">

					<div id="myMainInfo">
						<div class="logo">
							<img src="/img/logo.jpg" />
						</div>
						<div class="myPageIcon">
							<img src="/img/myPageIcon.jpg" />
							<h2></h2>
							<h2>관리자</h2>
						</div>
						<div class="menuIcon">
							<img src="/img/menuIcon.jpg" />
						</div>
					</div>

					<ul id="nav">
						<li><a href="<c:url value="/adim/cList.do"/>"></a>강의관리</li>
						<li><a href="<c:url value="/adim/tList.do"/>">강사관리</a></li>
						<li><a href="<c:url value="/adim/sList.do"/>">학생관리</a></li>
					</ul>

				</div>
			</c:if>
		</div>
		
		
		
		

		<div id="leftMenu">
			<h1>leftMenu</h1>
		</div>

		<div id="contents">
			<h1>contents</h1>
		</div>


		<div id="footer">
			<h1>footer</h1>
		</div>
	</div>




</body>

</html>
