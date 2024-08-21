package com.kh.common;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.oreilly.servlet.multipart.FileRenamePolicy;

public class MyFileRenamePolicy implements FileRenamePolicy{

	@Override
	public File rename(File arg0) {
		
		String originName = arg0.getName(); // 파일 오리진 이름
		
		String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		
		
		int ranNum=(int)(Math.random()*90000+10000);
		
		String ext = originName.substring(originName.lastIndexOf("."));
		
		
		String changeName = currentTime+ranNum+ext;
		
		
		
		
		
		
		
		return new File(arg0.getParent(),changeName);
	}

}
