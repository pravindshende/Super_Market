package com;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;


public class Add_Cart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Add_Cart() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		HttpSession session=request.getSession(false);
		if(session.getAttribute("name")!=null)
		{	int qnt=Integer.valueOf(request.getParameter("PQuantity"));
			if(request.getParameter("PQuantity")=="" || qnt<=0 )
			{
				out.print("<script>alert('Enter valid Quantity');window.location.href='Home.jsp';</script>");
			}else {
				int price=Integer.valueOf(request.getParameter("PPrice"));
				String name=request.getParameter("PName");
				String uname=session.getAttribute("name").toString();
				String image=request.getParameter("PImage");
				Model m=new Model(uname,name,price,qnt,image);
				ConnectionDB db=new ConnectionDB();
				int status=db.cart(m);
				if(status==0)
				{
					out.print("<script>alert('Please try Again'); window.location.href='Home.jsp';</script>");
				}else {
					out.print("<script>window.location.href='Cart.jsp';</script>");
				}
			}
		}
		else {
			out.print("<script>window.location.href='Login.jsp';</script>");
		}
	}

}
