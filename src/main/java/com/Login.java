package com;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public Login() {
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
		String pass=request.getParameter("password");
		Model m=new Model(name,pass);
		ConnectionDB db=new ConnectionDB();
		int status=db.login2(m);
		if(status==0)
		{
			out.print("<script>alert('Invalid user'); window.location.href='Login.jsp';</script>");
		}else{
			HttpSession session=request.getSession();
			session.setAttribute("name", name);
			out.print("<script>alert('Login Successfull'); window.location.href='Home.jsp';</script>");
		}
	}

}
