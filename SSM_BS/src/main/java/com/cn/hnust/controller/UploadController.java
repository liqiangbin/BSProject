package com.cn.hnust.controller; 

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.alibaba.fastjson.JSONObject;

@Controller  
@RequestMapping(value="/upload")  
public class UploadController {
	private final String JSON_JSP = "/commons/jsondata";
	private String responseJson;
	public String getResponseJson() {
		return responseJson;
	}
	public void setResponseJson(String responseJson) {
		this.responseJson = responseJson;
	}
	 @RequestMapping(value="/uploadImg" ,method = RequestMethod.POST)  
	    public String upload(@RequestParam(value = "mainimgFile", required = false) MultipartFile file,@RequestParam(value = "img1File", required = false) MultipartFile file1,@RequestParam(value = "img2File", required = false) MultipartFile file2,@RequestParam(value = "readFree", required = false) MultipartFile file3, HttpServletRequest request, ModelMap model) {  
		 JSONObject jsonResult = new JSONObject(); 
		 String path = request.getSession().getServletContext().getRealPath("/upload");  
		 String fileName="";
		 MultipartFile fileXX=null;
		 if(file!= null&&StringUtils.hasText(file.getOriginalFilename())){
			  fileName = file.getOriginalFilename(); 
			  fileXX=file;
		 } 
		 if(file1 != null){
			 fileName = file1.getOriginalFilename(); 
			 fileXX=file1;
		 } 
		 if(file2 != null){
			  fileName = file2.getOriginalFilename(); 
			  fileXX=file2;
		 }
		 if(file3 != null){
			  fileName = file3.getOriginalFilename();   
			  fileXX=file3;
		 }
	        System.out.println(path); 
	        File targetFile = new File(path, fileName);  
	        if(!targetFile.exists()){  
	            targetFile.mkdirs();  
	        }  
	        //����  
	        try {  
	        	jsonResult.put("status", "success");
	        	jsonResult.put("message", "�ϴ��ɹ���");
	        	fileXX.transferTo(targetFile);
	        } catch (Exception e) { 
	        	jsonResult.put("message", "�ϴ�ʧ�ܣ������ԣ�");
	            e.printStackTrace();  
	        }  
	       // model.addAttribute("fileUrl", request.getContextPath()+"/upload/"+fileName);  
	       responseJson = jsonResult.toString();
	       model.addAttribute("responseJson", responseJson);
	        return JSON_JSP; 
	    }  
	 
	 
	 
}
