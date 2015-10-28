package com.example.myproject;
import java.io.IOException;
import java.util.ArrayList;

import javax.jdo.Extent;
import javax.jdo.PersistenceManager;
import javax.servlet.ServletException;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class MytryofjdoServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		PersistenceManager pm=PMF.get().getPersistenceManager();
		String name=request.getParameter("username");
		String email=request.getParameter("emailId");
		
		Example ex=new Example();
		ex.setName(name);
		ex.setEmail(email);		
		
		pm.makePersistent(ex);
		Extent<Example> test=pm.getExtent(Example.class,false);
		/*for(Example e:test){
			
			System.out.println(e.getName());
		}
		resp.sendRedirect("welcome.jsp");
		*/
		ArrayList al=new ArrayList();
		
        for(Example e:test){
			al.add(e.getName());
			
		}
        System.out.println(al);
        
        
        	request.setAttribute("name",al);
        	
        	
        	
        	
        	
        	
        	ArrayList al1=new ArrayList();
    		
        	for(Example e:test){
    			al1.add(e.getEmail());
    			
    		}
        	request.setAttribute("email",al1);
        	request.getRequestDispatcher("successs.jsp").forward(request,response);
    		
        
        
		
		
		
		
		pm.close();
	}


	}

