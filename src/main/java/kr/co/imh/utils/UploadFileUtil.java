package kr.co.imh.utils;

import java.awt.image.BufferedImage;
import java.io.File;


import javax.imageio.ImageIO;

import org.imgscalr.Scalr;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class UploadFileUtil {
	
	private static final Logger logger = LoggerFactory.getLogger(UploadFileUtil.class);
	
	public static String uploadFile(String uploadPath, String originalName, byte[] fileData) throws Exception {
		
		return null;
	}

	private static String MakeThumbnail(String uploadPath, String path, String fileName) throws Exception {
		
		BufferedImage sourceImg = ImageIO.read(new File(uploadPath +path,fileName));
		
		BufferedImage destImg = Scalr.resize(sourceImg, Scalr.Method.AUTOMATIC, Scalr.Mode.FIT_TO_HEIGHT,100);
		
		String thumbnailName = uploadPath + path + File.separator + "s_" + fileName;
		
		File newFile = new File(thumbnailName);
		String formatname = fileName.substring(fileName.lastIndexOf("."+1));
		
		ImageIO.write(destImg, formatname.toUpperCase(), newFile);
		
		
		return thumbnailName.substring(uploadPath.length()).replace(File.separatorChar, '/');

	}

}
