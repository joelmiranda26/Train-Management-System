<%@ include file="dbinclude.jsp" %> 
<%

String train_id = request.getParameter("train_id");
String train_name = request.getParameter("train_name");
String line = request.getParameter("line");
String status = request.getParameter("status");


String sql = "insert into train(train_id,train_name,line,status) values ('"+train_id+"','"+train_name+"','"+line+"','"+status+"')";
out.print(sql);
statement.executeUpdate(sql);

response.sendRedirect("train.jsp");

%>
