<%@page import="java.util.Iterator"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.catalina.DistributedManager"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	// form에서 multipart가 맞는지 확인.
	boolean isMultipart = ServletFileUpload.isMultipartContent(request);
	
	// multipart가 아니면 파일업로드 불가능..
	if(isMultipart){
		
		DiskFileItemFactory factory = new DiskFileItemFactory();
		
		// 파서를 가지고 있는 ServletFileUpload 생성.
		// request에 파라미터로 들어온 input을 하나하나를 잘라준다. 
		ServletFileUpload upload = new ServletFileUpload(factory); 
		
		// 파서로 잘라진 (이름/학번/과제파일) ㅡ> List타입의 FileItem 객체에 넣어준다. 
		List<FileItem> items = upload.parseRequest(request);
		
		// Iterator로  
		Iterator<FileItem> ite = items.iterator();
		
		while(ite.hasNext()){
			// iterator의 next()로 파일 하나씩 반환. 
			FileItem item= ite.next();
			
			// input 타입 구분 : text인지 file인지..
			// .isFormField() : text value를 가는 input확인 
			// type="file" 이외의 input
			if(item.isFormField()){  
				// 파라미터 이름
				String paramName = item.getFieldName();
				// 파라미터 값
				String paramValue = item.getString("utf-8");
				System.out.println(paramName + " = " + paramValue);
			
			// type = "file"
			} else {
				// 파라미터 이름
				String paramname = item.getFieldName();
				// 파일 이름
				String fileName = item.getName();
				// 파일의 사이즈
				long fileSize = item.getSize();
				// 파일 타입
				String contentType = item.getContentType();
				// 임시메모리에 저장여부
				boolean isInMemory = item.isInMemory();
				
				System.out.println("필드 이름 : " + paramname);
				System.out.println("파일 이름 : " + fileName);
				System.out.println("파일의 사이즈 : " + fileSize);
				System.out.println("파일 타입 : " + contentType);
			
			};
			
			
		};
		
		
	};


%>


<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	
</body>
</html>