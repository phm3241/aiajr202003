<%@page import="java.io.File"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.catalina.DistributedManager"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

	// 1. form에서 enctype=multipart/form-data가 맞는지 확인.
	boolean isMultipart = ServletFileUpload.isMultipartContent(request);
	

	// multipart가 아니면 파일업로드 불가능..
	if(isMultipart){
		
		
		// 2. 메모리나 파일로 업로드 파일 보관하는 FileItem의 Factory 설정
		DiskFileItemFactory factory = new DiskFileItemFactory();
		
		
		// 3. 업로드 요청을 처리하는 ServletFileUpload 생성 (파서를 가지고 있음)
		// 	   파서가 request에 파라미터로 들어온 input을 하나하나를 잘라준다. 
		ServletFileUpload upload = new ServletFileUpload(factory); 
		
		
		// 4. 업로드 요청 파싱해서 FileItem 목록 구함
		//    파서로 잘라진 (이름/학번/과제파일) ㅡ> List타입의 FileItem 객체에 넣어준다. 
		List<FileItem> items = upload.parseRequest(request);
		
		// Iterator로 목록정렬? 
		Iterator<FileItem> ite = items.iterator();
		
		
		while(ite.hasNext()){
			
			// iterator의 next()로 파일 하나씩 반환. 
			FileItem item= ite.next();
			
			// 5. FileItem이 폼 입력 항목인지 여부에 따라 알맞은 처리 (input 타입 구분 : text인지 file인지..)
			// .isFormField() : text value를 가는 input확인 
			if(item.isFormField()){  // type="file" 이외의 input
				// 파라미터 이름
				String paramName = item.getFieldName();
				// 파라미터 값
				String paramValue = item.getString("utf-8");
				System.out.println(paramName + " = " + paramValue);
			
			} else {   // type = "file"
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
				
				
				// 업로드 한 파일을 실제 폴더에 저장하기  
				// 1. uri : 서버 내부의 경로. 저장될 실제 폴더가 있어야한다. 
				// String uri = "/file";
				
				// 1. uri : web.xml에 등록해둔 경로로 지정할 수도 있다. 
				String uri = request.getSession().getServletContext().getInitParameter("uploadPath");
				
				
				// 2. 시스템의 실제경로(절대경로)를 구해야한다.
				String realPath = request.getSession().getServletContext().getRealPath(uri);
				// System.out.println("절대경로 : " + realPath);
				
				// 새로운 파일명(입력한 시간_파일이름)으로 저장된다.
				// 다른사용자가 같은 파일이름의 파일을 올리면, 파일이 덮어써지며 저장된다...
				//    ㅡ> 중복을 피하기 위해 식별할 수 있는 새로운 파일명으로 저장해야한다. 
				String newFileName = System.nanoTime() +"_"+ fileName;
				
				
			
				// 3. 이 실제경로를 가지고 File 객체를 만들어서 서버의 저장소에 실제 저장
				// File saveFile = new File(realPath, fileName);
				File saveFile = new File(realPath, newFileName);
				item.write(saveFile);
				System.out.println("저장완료");
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