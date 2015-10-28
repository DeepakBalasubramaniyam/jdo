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
</table>
	<table border="1">
	<%
    
        // Create PrintWriter object
        java.io.PrintWriter pw=response.getWriter();
	// The attribute name we are getting is object so we are giving the name of the object.
	 Object o=request.getAttribute("name");
	//we are creating an arraylist
	         ArrayList al1 = new ArrayList();
	//here we are converting the object to arraylist
                al1 = (ArrayList) o;
             //here we are retrieving the arraylist one by one
             for(Object obj:al1){%>
            	 
            	 <tr> 
            	<td> <%= obj %></td>
            	 </tr>
            	 

            	 
            <% }
        
        %>
</table>
       
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