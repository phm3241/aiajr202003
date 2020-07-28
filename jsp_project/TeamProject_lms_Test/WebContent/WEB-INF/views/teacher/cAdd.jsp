<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
    
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/default.css">
	<script></script>
    <style></style>
</head>

<body>

	<div>
		<form id="cAddForm" action="cList.do" method="post">
			<div class="cAdd">
				<h4>강의명</h4>
				<input type="text" class="text name" name="name">
			</div>
			<div class="cAdd">
				<h4>교수명</h4>
				<input type="text" class="text teacher" name="teacher">
			</div>
			<div class="cAdd">
				<h4>강의내용</h4>
				<input type="text" class="text content" name="content">
			</div>
			<div class="cAdd">
				<h4>요일</h4>
				<select class="select day" name="day">
					<option>월</option>
					<option>화</option>
					<option>수</option>
					<option>목</option>
					<option>금</option>
				</select>
			</div>
			<div class="cAdd">
				<h4>시작시간</h4>
				<select class="select startTime" name="startTime">
					<option>8:00</option>
					<option>9:00</option>
					<option>10:00</option>
					<option>11:00</option>
					<option>12:00</option>
					<option>13:00</option>
					<option>14:00</option>
					<option>15:00</option>
					<option>16:00</option>
					<option>17:00</option>
					<option>18:00</option>
				</select>
			</div>
			<div class="cAdd">
				<h4>종료시간</h4>
				<select class="select endTime" name="endTime">
					<option>10:00</option>
					<option>11:00</option>
					<option>12:00</option>
					<option>13:00</option>
					<option>14:00</option>
					<option>15:00</option>
					<option>16:00</option>
					<option>17:00</option>
					<option>18:00</option>
				</select>
			</div>
			<div class="cAdd tName">
				<h4>정원</h4>
				<select class="select totalPer" name="totalPer">
					<option>15</option>
					<option>20</option>
					<option>25</option>
					<option>30</option>
				</select>
			</div>
			<input type="submit" class="cAddOk">
		
		</form>	
	
	</div>

</body>

</html>