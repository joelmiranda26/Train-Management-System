<%@ include file="dbinclude.jsp" %>
<%

String train_id = request.getParameter("train_id");
String train_name = request.getParameter("train_name");
String line = request.getParameter("line");
String status = request.getParameter("status");

String sql = "update train set train_name='"+train_name+"',line='"+line+"',status='"+status+"' where train_id='"+train_id+"'";
       
out.print(sql);
statement.executeUpdate(sql) ;

response.sendRedirect("train.jsp");

%>