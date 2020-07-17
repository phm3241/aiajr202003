<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.net.HttpURLConnection"%>
<%@page import="java.net.URL"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="application/xml; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>


	<%
		// 파라미터로 받기
		String serviceKey=request.getParameter("serviceKey");
		String pageNo=request.getParameter("pageNo");
		String numOfRows=request.getParameter("numOfRows");
		String dataType=request.getParameter("dataType");
		String CURRENT_DATE=request.getParameter("CURRENT_DATE");
		String HOUR=request.getParameter("HOUR");
		String COURSE_ID=request.getParameter("COURSE_ID");
		
		
		// url과 파라미터 만들기
		StringBuilder urlBuilder = new StringBuilder("http://apis.data.go.kr/1360000/TourStnInfoService/getTourStnVilageFcst"); /*URL*/
	    urlBuilder.append("?" + URLEncoder.encode("serviceKey","UTF-8") + "="+ serviceKey); /*Service Key*/
	    urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode(pageNo, "UTF-8")); /*페이지번호*/
	    urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode(numOfRows, "UTF-8")); /*한 페이지 결과 수*/
	    urlBuilder.append("&" + URLEncoder.encode("dataType","UTF-8") + "=" + URLEncoder.encode(dataType, "UTF-8")); /*요청자료형식(XML/JSON)*/
	    urlBuilder.append("&" + URLEncoder.encode("CURRENT_DATE","UTF-8") + "=" + URLEncoder.encode(CURRENT_DATE, "UTF-8")); /*2016-12-01 01시부터 조회*/
	    urlBuilder.append("&" + URLEncoder.encode("HOUR","UTF-8") + "=" + URLEncoder.encode(HOUR, "UTF-8")); /*CURRENT_DATE부터 24시간 후까지의 자료 호출*/
	    urlBuilder.append("&" + URLEncoder.encode("COURSE_ID","UTF-8") + "=" + URLEncoder.encode(COURSE_ID, "UTF-8")); /*관광 코스ID*/
	    
	    
	    // 
	    
	    URL url = new URL(urlBuilder.toString());
	    HttpURLConnection conn = (HttpURLConnection) url.openConnection();
	    conn.setRequestMethod("GET");
	    conn.setRequestProperty("Content-type", "application/"+dataType);
	    System.out.println("Response code: " + conn.getResponseCode());
	    
	    
	    // 문자열기반reader? .. 응답으로 받는 에러코드에 따라 다르게 할 수 있다?
	    BufferedReader rd;
	    if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
	        rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
	    } else {
	        rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
	    }
	    
	    
	    // 한줄씩 읽어서 StringBuilder에 추가해준다. 
	    StringBuilder sb = new StringBuilder();
	    String line;
	    
	    // readLine은 한줄단위로 읽는다.
	    while ((line = rd.readLine()) != null) {
	        sb.append(line);
	    }
	    
	    rd.close();
	    conn.disconnect();
	    
	    System.out.println(sb.toString());
	    // trim() : 공백삭제
	    out.print(sb.toString().trim());
	    
	    
	%>
	
	
	
	
	
	
	
	
	
	
	
	
	
	