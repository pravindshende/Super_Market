package com;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

public class Delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Delete() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.valueOf(request.getParameter("id"));
		PrintWriter out=response.getWriter();
		Model m=new Model(id);
		ConnectionDB db=new ConnectionDB();
		int status=db.delete(m);
		if(status==0)
		{
			out.print("<script>alert('Please try again'); window.location.href='Products.jsp';</script>");
		}else{
			out.print("<script>window.location.href='Products.jsp';</script>");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
