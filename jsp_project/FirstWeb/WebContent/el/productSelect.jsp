<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>선택한 상품 : ${param.sel}</h1>
	
	<h1>${product.productList[2]}</h1>
	
	<h1>num1 + num2 = ${product.num1+product.num2}</h1>
	
	<h1>${product.check}</h1>  
	<!-- .getCheck()와 같은 표현이다. is나 has 메서드도 속성이름으로만 메서드 호출이 가능하다. -->

</body>
</html>