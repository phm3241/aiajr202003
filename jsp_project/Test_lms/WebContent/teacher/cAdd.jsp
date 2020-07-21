<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수업등록</title>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<style></style>
</head>

<body>
	<div>
		<hr>
		<form id="cAddForm" action="cAdd.do" method="post"
			enctype="multipart/form-data">
			<table>
				<tr>
					<td>강의명</td>
					<td><input type="text" name="cName" id="cName" required>
					</td>
				</tr>
				<tr>
					<td>교수명</td>
					<td><input type="password" name="upw" required></td>
				</tr>
				<tr>
					<td>강의내용</td>
					<td><input type="text" name="uname" ></td>
				</tr>
				<tr>
					<td>요일</td>
					<td><select>
							<option>월</option>
							<option>화</option>
							<option>수</option>
							<option>목</option>
							<option>금</option>
					</select></td>
				</tr>
				<tr>
					<td>시작시간</td>
					<td><select>
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
					</select></td>
				</tr>
				<tr>
					<td>종료시간</td>
					<td>
						<select>
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
					</td>
				</tr>
				<tr>
					<td>정원</td>
					<td>
						<select>
							<option>15</option>
							<option>20</option>
							<option>25</option>
							<option>30</option>
						</select>
					</td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" name="cAdd"> <input
						type="reset"></td>
				</tr>
			</table>

		</form>
	</div>
</body>
</html>