package com.sample.web.common;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.oreilly.servlet.multipart.FileRenamePolicy;


public class MyRenamePolicy implements FileRenamePolicy {

	@Override
	public File rename(File origin) {
		

		
		String originName = origin.getName();
		

		String ext = originName.substring(originName.lastIndexOf("."));
		
		
		String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		
		int randomNum = (int)(Math.random() * 900) +100;
		
		String changeName = "SAMPLE_" + currentTime + "_" + randomNum + ext;
		
		
		return new File(origin.getParent(), changeName);
	}

}
