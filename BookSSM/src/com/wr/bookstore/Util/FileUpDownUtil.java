package com.wr.bookstore.Util;

import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
@Component
public class FileUpDownUtil {
	/**
	 * 文件上传
	 * @param file 上传文件对象
	 * @param folderName 要存入的文件夹名
	 * @param request request对象，用于定位服务器路径
	 * @return 存入文件后分配的文件名
	 * @throws IOException 
	 */
	public static String uploadFile(HttpServletRequest request) throws IOException{
		//1.上传到服务器
		MultipartHttpServletRequest mreq = (MultipartHttpServletRequest)request;
        MultipartFile file = mreq.getFile("picture");//接收上传文件
        String fileName = file.getOriginalFilename();//得到 上传文件的名字
        //req.getSession().getServletContext().getRealPath("/"):找到服务器地址
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
        if(fileName.lastIndexOf('.')!=-1) {
        	FileOutputStream fos = new FileOutputStream(request.getSession().getServletContext().getRealPath("/")+
                    "images/"+sdf.format(new Date())+fileName.substring(fileName.lastIndexOf('.')));
            fos.write(file.getBytes());//上传到服务器
            fos.flush();
            fos.close();
        }
        
        return "images/"+sdf.format(new Date())+fileName.substring(fileName.lastIndexOf('.'));
    }
	
}
