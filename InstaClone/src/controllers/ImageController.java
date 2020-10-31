package controllers;

import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ImageController {
	
	@RequestMapping("/fetchimage")
	public void retImage(@RequestParam String fileName, HttpServletResponse response) throws IOException {
		
		ByteArrayOutputStream jpegOutputStream = new ByteArrayOutputStream();
		
		 try {
			InputStream is = new FileInputStream("C:\\Users\\ABC\\Downloads\\"+fileName);
			BufferedImage img = ImageIO.read(is);
			ImageIO.write(img, "jpg", jpegOutputStream);
			
			
		} catch (FileNotFoundException e) {
			response.sendError(HttpServletResponse.SC_NOT_FOUND);
		}
		 
		 byte[] imgByte = jpegOutputStream.toByteArray();
		 
		 	response.setHeader("Cache-Control", "no-store");
		    response.setHeader("Pragma", "no-cache");
		    response.setDateHeader("Expires", 0);
		    response.setContentType("image/jpeg");
		    ServletOutputStream responseOutputStream = response.getOutputStream();
		    responseOutputStream.write(imgByte);
		    responseOutputStream.flush();
		    responseOutputStream.close();
		
		
	}

}
