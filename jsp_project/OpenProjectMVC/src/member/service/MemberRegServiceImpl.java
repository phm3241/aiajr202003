package member.service;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import jdbc.ConnectionProvider;
import member.dao.MemberDao;
import member.model.Member;
import service.Service;

public class MemberRegServiceImpl implements Service {

	@Override
	public String getViewPage(HttpServletRequest request, HttpServletResponse response) {
		
		// 파일 업로드 - 사진
		// 사용자 데이터를 받기 - uid, upw, uname, uphoto
		
		
		MemberDao dao;
		
		// 입력되었는지 여부.. 
		int resultCnt = 0;
		
		// 데이터 베이스에 입력할 데이터 변수
		String uid = null;
		String upw = null;
		String uname = null;
		String uphoto = null;		
		
		Connection conn = null;

		try {

			// 1. form에서 enctype="multipart/form-data"가 맞는지 확인.
			boolean isMultipart = ServletFileUpload.isMultipartContent(request);

			// multipart가 아니면 파일업로드 불가능..
			if (isMultipart) {

				// 2. 메모리나 파일로 업로드 파일 보관하는 FileItem의 Factory 설정
				// input으로 들어오는 입력데이터의 저장공간 만든다. 
				DiskFileItemFactory factory = new DiskFileItemFactory();

				// 3. 업로드 요청을 처리하는 ServletFileUpload 생성 (파서를 가지고 있음)
				// 파서가 request에 파라미터로 들어온 input을 하나하나를 잘라준다.
				ServletFileUpload upload = new ServletFileUpload(factory);

				// 4. 업로드 요청 파싱해서 FileItem 목록 구함
				// 파서로 잘라진 (이름/학번/과제파일) ㅡ> List타입의 FileItem 객체에 넣어준다.
				List<FileItem> items = upload.parseRequest(request);

				// Iterator로 목록정렬?
				Iterator<FileItem> ite = items.iterator();

				while (ite.hasNext()) {

					// iterator의 next()로 파일 하나씩 반환.
					FileItem item = ite.next();

					// 5. FileItem이 폼 입력 항목인지 여부에 따라 알맞은 처리 (input 타입 구분 : text인지 file인지..)
					// .isFormField() : text value를 가는 input확인
					if (item.isFormField()) { // type="file" 이외의 input
						// 파라미터 이름
						String paramName = item.getFieldName();
						// 파라미터 값
						String paramValue = item.getString("utf-8");

						// System.out.println(paramName + " = " + paramValue);

						// form에서 받은 데이터를 Report객체의 변수에 저장
						if(paramName.equals("uid")) {
							uid = paramValue;
						} else if(paramName.equals("upw")) {
							upw = paramValue;
						} else if(paramName.equals("uname")) {
							uname = paramValue;
						} else if(paramName.equals("uphoto")) {
							uphoto = paramValue;
						}  
						
						
						
	
					} else { // type = "file" 수정필요............

						// 업로드 한 파일을 실제 폴더에 저장하기
						// 1. uri : 서버 내부의 경로. 저장될 실제 폴더가 있어야한다.
						String uri = "/upload/users";

						// 1. uri : web.xml에 등록해둔 경로로 지정할 수도 있다.
						// String uri = request.getSession().getServletContext().getInitParameter("uploadPath");

						// 2. 시스템의 실제경로(절대경로)를 구해야한다.
						String realPath = request.getSession().getServletContext().getRealPath(uri);
						// System.out.println("절대경로 : " + realPath);

						// 새로운 파일명(입력한 시간_파일이름)으로 저장된다.
						// 다른사용자가 같은 파일이름의 파일을 올리면, 파일이 덮어써지며 저장된다...
						// ㅡ> 중복을 피하기 위해 식별할 수 있는 새로운 파일명으로 저장해야한다.
						String newFileName = System.nanoTime() + "_" + item.getName();

						// 3. 이 실제경로를 가지고 File 객체를 만들어서 서버의 저장소에 실제 저장
						// File saveFile = new File(realPath, fileName);
						File saveFile = new File(realPath, newFileName);

						item.write(saveFile);

						System.out.println("저장완료");
						
						uphoto = uri + "/" + newFileName;
//						System.out.println(filePath);
						
					}; //else end
					
					
				}; //while end	
				
				
				
				
				// 데이터 베이스 저장
				Member member = new Member();
				member.setUid(uid);
				member.setUpw(upw);
				member.setUname(uname);
				member.setUphoto(uphoto);
				
				
				conn = ConnectionProvider.getConnection();
				
				
				dao = MemberDao.getInstance();
				resultCnt = dao.insertMember(conn, member);
				
				
				request.setAttribute("member", member);
				request.setAttribute("result", resultCnt);
				
				
			}; //if end

		} catch (FileUploadException e) {
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			
			if(conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		} // finally end

			

		
		return "/WEB-INF/views/member/reg.jsp";
	}

}