package com.kh.common.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.oreilly.servlet.multipart.FileRenamePolicy;

public class MyFileRenamePolicy implements FileRenamePolicy{

	@Override
	public File rename(File originFile) {
		
		//원본파일명
		String originName = originFile.getName();
		
		// 수정파일명 규칙
		// 1.업로드시간
		String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		// 2. 5자리랜덤값
		int ranNum = (int)(Math.random() * 90000 + 10000);
		// 3. 확장자
		String ext = originName.substring(originName.lastIndexOf("."));
		
		// 수정파일명 생성
		String changeName = currentTime + ranNum + ext;	
		
		//원본파일명을 수정파일명으로 변경해서 리턴
		return new File(originFile.getParent(), changeName);
		
	}

	
}
