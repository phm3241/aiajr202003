<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>주문</h1>
	<hr>
	
	
	<!-- form에 action을 지정해주지 않으면 자기자신의 uri를 호출한다. 다만 method는 기재해야한다. -->
	<form method="post">  
	
		<table>
			<!-- List<OrderItem> orderItems에 하나씩 넣어주려고 함. -->
			<!-- 커맨드 객체 orderItem에 input한 것을 set해준다. -->
			<!-- ui에서 + 하나씩하면 orderItems[1] 이런식으로 추가하면 되는 것으로 활용가능.  -->
			<tr>
				<td>상품1- ID</td>
				<td><input type="text" name="orderItems[0].itemId"></td>
			</tr>
			<tr>
				<td>상품1- 개수</td>
				<td><input type="number" name="orderItems[0].number"></td>
			</tr>
			<tr>
				<td>상품1- 주의사항</td>
				<td><input type="text" name="orderItems[0].remark"></td>
			</tr>

			<tr>
				<td>상품2- ID</td>
				<td><input type="text" name="orderItems[1].itemId"></td>
			</tr>
			<tr>
				<td>상품2- 개수</td>
				<td><input type="number" name="orderItems[1].number"></td>
			</tr>
			<tr>
				<td>상품2- 주의사항</td>
				<td><input type="text" name="orderItems[1].remark"></td>
			</tr>

			<tr>
				<td>상품3- ID</td>
				<td><input type="text" name="orderItems[2].itemId"></td>
			</tr>
			<tr>
				<td>상품3- 개수</td>
				<td><input type="number" name="orderItems[2].number"></td>
			</tr>
			<tr>
				<td>상품3- 주의사항</td>
				<td><input type="text" name="orderItems[2].remark"></td>
			</tr>



			<!-- Address address-->
			<tr>
				<td>배송지 : 우편번호</td>
				<td><input type="text" name="address.zipcode"></td>
			</tr>
			<tr>
				<td>배송지 : 기본주소</td>
				<td><input type="text" name="address.address1"></td>
			</tr>
			<tr>
				<td>배송지 : 상세주소</td>
				<td><input type="text" name="address.address2"></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" name="주문"></td>
			</tr>
		</table>
	</form>


</body>
</html>