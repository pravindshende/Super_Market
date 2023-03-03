package com;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String mob=request.getParameter("mobile");
		String pass=request.getParameter("pass");
		Model m=new Model(name,email,mob,pass);
		ConnectionDB db=new ConnectionDB();
		int status=db.insert(m);
		if(status==0)
		{
			out.print("<script>alert('Please try Again'); window.location.href='Register.jsp';</script>");
		}else {
			out.print("<script>alert('Register Successfull'); window.location.href='Login.jsp';</script>");
		}
	}

}
