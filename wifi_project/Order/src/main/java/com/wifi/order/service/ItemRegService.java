package com.wifi.order.service;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.wifi.order.dao.ItemDao;
import com.wifi.order.model.Item;
import com.wifi.order.model.ItemRegRequest;

//공구글 등록 
@Service
public class ItemRegService {

	
	private ItemDao dao;

	@Autowired
	private SqlSessionTemplate template;
	
	public int regItem(HttpServletRequest request, ItemRegRequest itemRequest) {
		
		// iidx, regdate, photo 가 없는 Item 객체를 먼저 생성
		Item item = itemRequest.toItem();
		System.out.println("공구글 등록 service ");
		System.out.println("item :"+item.toString());
		dao = template.getMapper(ItemDao.class);
		
		
		try {
			
		// 사진 파일 받아오기 
		MultipartFile file = itemRequest.getPhoto();
		
		System.out.println("itemRequest :"+itemRequest);
		
		// 사진이 있으면, 
		if(file != null && !file.isEmpty() && file.getSize() >0) {
			
			// 서버 내부의 경로
			String uri ="/upload";
			
			// 시스템의 실제(절대)경로
			String realPath = request.getSession().getServletContext().getRealPath(uri);
			
			// 저장할 이미지 파일의 새로운 이름 생성
			String newFileName = System.nanoTime() + "_" + file.getOriginalFilename();
			
			// 서버의 저장소에 실제 저장
			File saveFile = new File(realPath, newFileName);
			file.transferTo(saveFile);
			System.out.println("파일저장완료 : " + newFileName);

			// 데이터베이스에 저장할 Item 객체의 데이터를 완성한다. : 사진경로
			item.setPhoto(newFileName);
			
			
			// 사진이 없으면, 기본이미지로 Item 객체의 데이터 완성.
			} else {
				item.setPhoto("defalut.png");
			}
			
			
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		System.out.println("item(사진포함객체):"+item.toString());
		System.out.println("dao.regItem(item); :"+dao.regItem(item));
		return dao.regItem(item);
	}


	}

	

