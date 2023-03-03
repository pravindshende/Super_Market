package com;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

@MultipartConfig
public class AddProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public AddProduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String name=request.getParameter("Pname");
		int price=Integer.valueOf(request.getParameter("Pprice"));
		Part file=request.getPart("Pimage");
		String fileName=file.getSubmittedFileName();
		String uploadPath="C:/Users/Pravin Shende/Eclipse-Workspace-2/Super_Market_Project/src/main/webapp"+fileName;
		try {
			FileOutputStream fos=new FileOutputStream(uploadPath);
			InputStream is=file.getInputStream();
			byte[] data=new byte[is.available()];
			is.read(data);
			fos.write(data);
			fos.close();
			}catch(Exception e)
			{
				e.printStackTrace();
			}
		Model m=new Model(name,price,fileName);
		ConnectionDB db=new ConnectionDB();
		int status=db.addProduct(m);
		if(status==0)
		{
			out.print("<script>alert('Please try Again'); window.location.href='AdminPanel.jsp';</script>");
		}else {
			out.print("<script>alert('Product added Successfull'); window.location.href='Products.jsp';</script>");
		}
	}

}
