<%@page import="com.example.myproject.Example"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>is not empty</h1>
   <!-- ${name}<br />
   <p>${name}</p><br />
${email}<br />-->
<%Object name= request.getAttribute("name"); %>
<table>
<tr><p>name=<%= request.getAttribute("name") %></p></tr><br /> 
<tr><p>name=<%= name %></p></tr> <br />

</table>
	
	<%
    
        // Create PrintWriter object
        java.io.PrintWriter pw=response.getWriter();
	/* String o=request.getAttribute("name").toString();
			String[] strArray = new String[] {o};
			for(int i=0;i<strArray.length;i++){
				pw.println(strArray[i]);
				pw.println(strArray.length);
				
			}
	 */
	 Object o=request.getAttribute("name");
	 /* pw.println(o.getClass());
	 pw.println((request.getAttribute("name")).getClass()) ;
             for(int i=1;i<=10;i++){
        	pw.println(i);
        	
        	}
      */        ArrayList al1 = new ArrayList();
                al1 = (ArrayList) o;
             pw.println(al1);
             for(Object obj:al1){
            	 pw.println(obj);
            	 
             }
        
        %>

        <!-- Printing the password -->
        <%
       // pw.println("<h1>Your password is "+password+"</h1>");
        %>
    </body>
	

</body>
</html>


 <!--  <html>
  <body>
    <table border="1">
        <c:forEach items="${name}" var="user">
            <tr>
                <td>${name}</td>
            </tr>
        </c:forEach>
    </table>
  </body>
</html>-->