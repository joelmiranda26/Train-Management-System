<%@ include file="dbinclude.jsp" %> 
<%@ page import = " java.util.* " %>
<%

String username = request.getParameter("username");
String password = request.getParameter("password");
out.print(password);

ResultSet resultset = statement.executeQuery("select * from Users where  username='" + username + "'") ;
String dbPasswrd = "";
String role = "";
 while(resultset.next()){
    dbPasswrd = resultset.getString(3);
    role = resultset.getString(4);
 
  }

  

if(dbPasswrd.equals(password)){
    if(role.equals("admin")){
        response.sendRedirect("train.jsp");
    }
    else if(role.equals("employee")){
        response.sendRedirect("time_schedule.jsp");
    }
    
    session.setAttribute("role",role); 
    
}else{
     response.sendRedirect("login.html");
}
%>



