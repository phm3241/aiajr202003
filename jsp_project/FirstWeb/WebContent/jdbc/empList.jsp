<%--@page import="guestbook.jdbc.ConnectionProvider"--%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="model.Emp"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	
	<!-- 
	화면을 보여주는 empList_view.jsp 로 이동 
	<style>
		table {
			width: 80%;
		}
		
		table td {
			padding: 10px;
		}
	</style> -->
	
</head>
<body>

	<!-- 위에는 데이터 처리하는 부분 : DAO(Data Access Object)  -->
	<%
		// 1. 드라이브로드
		// 2. Connection 생성
		// 3. Statement
		// 4. ResultSet
		// 5. close

	// 1. 데이터베이스 로드
	// 톰캣(서블릿 컨테이너) 시작시 Servlet 초기화 되도록 설정하기
	// 우리가 작성해 놓은 Servlet이 객체화 되어 생성되는 시점은 사용자로부터 최초의 요청이 발생할 때 
	// 	   그리고 서블릿은 생성과정에서  init()메서드가 실행. 
	// 그런데 사용자의 요청 여부에 관계없이 서블릿 컨테이너(톰캣)가 시작됨과 동시에 
	//    서블릿의 생성과 초기화를 진행하고 싶을 때, 
	//    web.xml에 초기화를 원하는 서블릿에 대해서 <load-on-startup>태그를 설정해주거나
	//	  @WebServlet 어노테이션을 사용하는 경우 loadOnStartUp 속성값을 지정.

	// 따라서 web.xml에 서블릿 초기화로 데이터로드 설정하여, 
	// 서버가 시작될 때 초기화되면서 데이터로드가 자동으로 1번 실행되므로.. 
	// 아래처럼 일일히 데이터 로드할 필요가 없다. 
	// Class.forName("oracle.jdbc.driver.OracleDriver");
	

	// Connection conn = null;
	
	/* Statement stmt = null;
	ResultSet rs = null;

	List<Emp> empList = new ArrayList();

	// DB Connection 정보
	String dbUrl = "jdbc:oracle:thin:@localhost:1521:orcl";
	String user = "scott";
	String pw = "tiger"; */

	//try {
		
		// ConnectionProvider 
		// 2. Connection 생성
		// conn = DriverManager.getConnection(dbUrl, user, pw);
		// conn = ConnectionProvider.getConnection();
		
		
		/*
		// 3. Statement 생성
		stmt = conn.createStatement();

		String sql = "select * from emp order by ename desc";

		// select의 결과 ResultSet 객체에 담는다.
		rs = stmt.executeQuery(sql);

		// 결과 출력
		while (rs.next()) {
			empList.add(new Emp(rs.getInt("empno"), rs.getString("ename"), rs.getInt("sal"), rs.getString("job")));
		} //while end

	} catch (SQLException ex) {
		// 예외처리

	} finally {
		rs.close();
		stmt.close();
		conn.close();
	} 
	*/

	// DB데이터를 가져와서 request의 속성에 저장.
	// request.setAttribute("empList", empList);
	
	

	%>


	<jsp:forward page="empList_view.jsp"/>


	<!-- 위에는 데이터 처리하는 부분 ㅡ> empList.jsp (사용자 요청의 처리부분) -->
	<!-- --------------------------------------------------------------- -->
	<!-- 아래는 화면에 보여지는 부분 ㅡ> empList_view.jsp로 분리 (Data의 출력)
	  	   ===> forward로 보내기 empList_view.jsp로 결과페이지로 이동 -->



	<%-- 저장된 원본 데이터 : ${empList} --%>
	<%-- <table border=1>
		<tr>
			<th>사원 번호</th>
			<th>사원 이름</th>
			<th>사원 급여</th>
			<th>사원 직급</th>
		</tr>

		<c:forEach items="${empList}" var="emp">
			<tr>
				<td>${emp.empno}</td>
				<td>${emp.ename}</td>
				<td>${emp.sal}</td>
				<td>${emp.job}</td>
			</tr>

		</c:forEach>
	</table> --%>



</body>
</html>