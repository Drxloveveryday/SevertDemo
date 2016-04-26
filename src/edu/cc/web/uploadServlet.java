package edu.cc.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspsmart.upload.File;
import com.jspsmart.upload.Files;
import com.jspsmart.upload.SmartUpload;

public class uploadServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Constructor of the object.
	 */
	private ServletConfig config;
	
	public void init(ServletConfig config) throws ServletException {
		this.config=config;
	}
	public uploadServlet() {
		super();
	}

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		PrintWriter out=response.getWriter();
		out.println();
		SmartUpload mySmartUpload=new SmartUpload();
		try{
			mySmartUpload.initialize(config, request, response);
			mySmartUpload.setMaxFileSize(150*1024*1024);
			mySmartUpload.setTotalMaxFileSize(1500*1024*1024);
			mySmartUpload.setAllowedFilesList("doc,txt,rar,pdf,png");
			mySmartUpload.setDeniedFilesList("exe");
			mySmartUpload.upload();
			int count=mySmartUpload.save("/");
			for(int i=0;i<mySmartUpload.getFiles().getCount();i++){
				File file=mySmartUpload.getFiles().getFile(i);
				if(!file.isMissing()){
					out.println("File Name:&nbsp;<font color=red>"+file.getFileName()+"</font><br>");
					out.println("File ExtName:&nbsp;<font color=red>"+file.getFileExt()+"</font><br>");
					out.println("Path:&nbsp;<font color=red>"+file.getFilePathName()+"</font><br>");
					file.saveAs("/upload/"+file.getFileName(),mySmartUpload.SAVE_VIRTUAL);
					file.saveAs("F:\\dd"+file.getFileName(),mySmartUpload.SAVE_PHYSICAL);
				}
			}
		}catch(Exception e){
			out.println("Unable to upload the file.<br>");
			out.println("Please Check The File Type");
		}
		out.println("</center></BODY>");
		out.println("/HTML");
	}
}
