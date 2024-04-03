<%@ include file="dbinclude.jsp" %>
<%

String train_id = request.getParameter("tid");


String sql = "delete from train where train_id='" + train_id + "'";
statement.executeUpdate(sql);

response.sendRedirect("train.jsp");

%>
