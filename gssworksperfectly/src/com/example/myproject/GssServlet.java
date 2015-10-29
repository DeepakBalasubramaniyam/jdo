package com.example.myproject;
import java.io.IOException;
import java.util.ArrayList;

import javax.jdo.PersistenceManager;
import javax.servlet.ServletException;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class GssServlet extends HttpServlet {
	/*public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		request.setAttribute("reason","krishna");
		request.getRequestDispatcher("successs.jsp").forward(request,response);
		
	}*/
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String time=request.getParameter("time");
		String reason=request.getParameter("reason");
		PersistenceManager pm=PMF.get().getPersistenceManager();
		Example ex=new Example();
		ex.setTime(time);
		ex.setReason(reason);
		pm.makePersistent(ex);
		ArrayList al=new ArrayList();
		for(Example e:pm.getExtent(Example.class,false)){
			
			al.add(e.getTime());
			
	    	
		}
		request.setAttribute("time",al);
		
		
		ArrayList al1=new ArrayList();
		for(Example e:pm.getExtent(Example.class,false)){
			
			al1.add(e.getReason());
			
	    	
		}
		
		request.setAttribute("reason",al1);
		request.getRequestDispatcher("successs.jsp").forward(request,response);
		
		
		

		pm.close();

		
		
	}



}
